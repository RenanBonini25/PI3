package br.com.pi3.Classes;

import java.util.List;

public class Game extends Produto {
    
    private String plataforma;
    private String desenvolvedora;
    private int classIndicativa;
    private List<String> categorias;

    public Game() {
    }

    public Game(String nome, int quantidade, double precoCompra, double precoVenda, 
            String plataforma, String desenvolvedora, int classIndicativa, 
            List<String> categorias) {
        super(nome, quantidade, precoCompra, precoVenda);
        this.plataforma = plataforma;
        this.desenvolvedora = desenvolvedora;
        this.classIndicativa = classIndicativa;
        this.categorias = categorias;
    }

    public String getPlataforma() {
        return plataforma;
    }

    public void setPlataforma(String plataforma) {
        this.plataforma = plataforma;
    }

    public String getDesenvolvedora() {
        return desenvolvedora;
    }

    public void setDesenvolvedora(String desenvolvedora) {
        this.desenvolvedora = desenvolvedora;
    }

    public int getClassIndicativa() {
        return classIndicativa;
    }

    public void setClassIndicativa(int classIndicativa) {
        this.classIndicativa = classIndicativa;
    }

    public List<String> getCategorias() {
        return categorias;
    }

    public void setCategorias(List<String> categorias) {
        this.categorias = categorias;
    }
    
    
    
}
