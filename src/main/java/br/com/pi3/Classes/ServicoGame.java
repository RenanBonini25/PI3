package br.com.pi3.Classes;

import br.com.pi3.DAO.DAOGame;
import java.util.ArrayList;

public class ServicoGame {

    public static void cadastrarGame(Game game, ArrayList<CategoriaGame> categorias) {
        try {
            int idGame = DAOGame.incluir(game);
            for (int i = 0; i < categorias.size(); i++) {
                categorias.get(i).setIdGame(idGame);
                DAOGame.incluirGameCat(categorias.get(i));
            }

        } catch (Exception ex) {
            
        }
    }

}
