
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" type="text/css" href="../_css/estilo.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuário</title>
    </head>
    <body>
        <c:forEach items="${obterUsuario}" var="p">
            <div id="corpo">
                <div id="dados">
                    <form action="${pageContext.request.contextPath}/EditarUsuario" method="post">
                        <input type="hidden" value="${p.id}" name="id">
                        <label>Nome</label>
                        <input type="text" value="${p.nome}" name="TxtNome"><br><br>
                        <label>CPF</label>
                        <input type="text" value="${p.cpf}" name="TxtCPF"><br><br>
                        <label>Username</label>
                        <input type="text" value="${p.userName}" name="TxtUserName"><br><br>
                        <label>Senha</label>
                        <input type="text" value="${p.senha}" name="TxtSenha"><br><br>
                        <label>Filial</label>
                        <select name="Filial">
                            <option value="${p.filial}">${p.filial}</option>
                            <c:forEach var="nomeFilial" items="${listaFiliais}">
                                <option value="${nomeFilial.nome}">${nomeFilial.nome}</option>
                            </c:forEach>
                        </select><br><br>
                        <label>Permissão</label>
                        <select name="Permissao">
                            <option value="${p.permissoes.get(0).getNome()}">${p.permissoes.get(0).getNome()}</option>
                            <option value="basico">Básico</option>
                            <option value="tec">Tec</option>
                            <option value="backOffice">Backoffice</option>
                            <option value="Gerente">Gerente</option>
                        </select><br><br>


                        <input type="submit" name="BotaoSalvar" onclick="alert('Usuário alterado com sucesso!')" value="Salvar">
                    </form>
                </c:forEach>

            </div>		
        </div>
    </body>
</html>
