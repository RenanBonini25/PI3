package br.com.pi3;

import br.com.pi3.Classes.Cliente;
import br.com.pi3.DAO.DAOCliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "EditarCliente", urlPatterns = {"/EditCliente"})
public class EditarCliente extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) {
        String idTemp = request.getParameter("id");
        int id = Integer.parseInt(idTemp);
        request.setAttribute("obterCliente", DAOCliente.obterCliente(id));
        RequestDispatcher rd = request.getRequestDispatcher("EditarCliente.jsp");
        try {
            rd.forward(request, response);
        } catch (ServletException | IOException ex) {
            Logger.getLogger(EditarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idTemp = request.getParameter("id");
        int id = Integer.parseInt(idTemp);

        String nome = request.getParameter("TxtNome");
        String cpf = request.getParameter("TxtCPF");
        String sexo = request.getParameter("Sexo");
        String data = request.getParameter("DataNascimento");
        String estadoCivil = request.getParameter("EstadoCivil");
        String endereco = request.getParameter("TxtEndereco");
        String complemento = request.getParameter("TxtComplemento");
        String numero = request.getParameter("TxtNumeroEnd");
        String bairro = request.getParameter("TxtBairro");
        String cep = request.getParameter("TxtCep");
        String cidade = request.getParameter("TxtCidade");
        String estado = request.getParameter("Estados");

        Cliente cliente = new Cliente(nome, cpf, sexo, data, estadoCivil, endereco, complemento, numero, bairro,
                cep, cidade, estado);
        cliente.setId(id);

        DAOCliente.atualizarCliente(cliente);

        response.sendRedirect("/pi3-1.0-SNAPSHOT/ListagemClientes");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
