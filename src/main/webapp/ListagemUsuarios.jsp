<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários</title>
    </head>
    <body>
        <div>
            <a href="${pageContext.request.contextPath}/CadastrarUsuario">Cadastrar Usuário</a>
        </div>
        <div style="width: 1200px; margin-left: auto; margin-right: auto;">
            <table cellpadding="10">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>CPF</th>
                    <th>Username</th>
                    <th>Filial</th>
                    <th>Permissão</th>
                </tr>
                <c:forEach items="${Listagem}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.nome}</td>
                        <td>${p.cpf}</td>
                        <td>${p.userName}</td>
                        <td>${p.filial}</td>
                        <td>${p.permissoes.get(0).getNome()}</td>

                        <td>
                            <a href="EditarUsuario?id=${p.id}">Editar</a> 
                            <a href="DeletCliente?id=${p.id}">Deletar</a> 
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
