/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.pi3;

import br.com.pi3.Classes.Cliente;
import br.com.pi3.DAO.DAOCliente;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet(name = "CadastrarCliente", urlPatterns = {"/CadastrarCliente"})
public class CadastrarCliente extends HttpServlet {

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
            
            Cliente cliente = new Cliente (nome,cpf,sexo,data,estadoCivil,endereco,complemento,
            numero,bairro,cep,cidade,estado);
            
        try {
            DAOCliente.incluir(cliente);
        } catch (SQLException ex) {
            Logger.getLogger(CadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(CadastrarCliente.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            response.sendRedirect("/pi3-1.0-SNAPSHOT/ListagemClientes");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
