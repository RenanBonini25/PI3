package br.com.pi3;

import br.com.pi3.Classes.CategoriaGame;
import br.com.pi3.Classes.Game;
import br.com.pi3.Classes.ServicoGame;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "CadastrarGame", urlPatterns = {"/CadastrarGame"})
public class CadastrarGame extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Game game = new Game();
        ArrayList<CategoriaGame> categorias = new ArrayList<>();
        game.setCategorias(categorias);

        String nome = request.getParameter("TxtNome");
        if (request.getParameter("cat1") != null) {
            CategoriaGame cat = new CategoriaGame();
            cat.setNome("Ação");
            cat.setId(1);
            categorias.add(cat);
        }
        if (request.getParameter("cat2") != null) {
            CategoriaGame cat = new CategoriaGame();
            cat.setNome("Simulador");
            cat.setId(2);
            categorias.add(cat);
        }
        if (request.getParameter("cat3") != null) {
            CategoriaGame cat = new CategoriaGame();
            cat.setNome("RPG");
            cat.setId(3);
            categorias.add(cat);
        }

        String desenv = request.getParameter("TxtDesenvolvedora");
        String indicClass = request.getParameter("TxtIndicClassif");
        String plataforma = request.getParameter("Plataforma");
        String compra = request.getParameter("TxtPrecoCompra");
        double precoCompra = Double.parseDouble(compra);
        String venda = request.getParameter("TxtPrecoVenda");
        double precoVenda = Double.parseDouble(venda);
        String qtd = request.getParameter("TxtQuantidade");
        int quantidade = Integer.parseInt(qtd);

        game.setNome(nome);
        game.setDesenvolvedora(desenv);
        game.setPlataforma(plataforma);
        game.setClassIndicativa(indicClass);
        game.setPrecoCompra(precoCompra);
        game.setPrecoVenda(precoVenda);
        game.setQuantidade(quantidade);

        try {
            ServicoGame.cadastrarGame(game, categorias);
        } catch (Exception ex) {

        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
