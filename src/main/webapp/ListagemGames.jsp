<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Games</title>
    </head>
    <body>
        <div>
            <a href="${pageContext.request.contextPath}/CadastrarGame">Cadastrar Game</a>
        </div>
        <div style="width: 1200px; margin-left: auto; margin-right: auto;">
            <table cellpadding="10">
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Plataforma</th>
                    <th>Desenvolvedora</th>
                    <th>Quantidade</th>
                    <th>Preço Compra</th>
                    <th>Preço Venda</th>
                </tr>
                <c:forEach items="${Listagem}" var="p">
                    <tr>
                        <td>${p.id}</td>
                        <td>${p.nome}</td>
                        <td>${p.plataforma}</td>
                        <td>${p.desenvolvedora}</td>
                        <td>${p.quantidade}</td>
                        <td>${p.precoCompra}</td>
                        <td>${p.precoVenda}</td>

                        <td>
                            <a href="EditarGame?id=${p.id}">Editar</a> 
                            <a href="ExcluirGame?id=${p.id}">Deletar</a> 
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
