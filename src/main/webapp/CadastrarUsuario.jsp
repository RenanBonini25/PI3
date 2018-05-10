<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="_css/estilo.css">
        <title>Cadastrar Usuário</title>
    </head>
    <body>
        <div id="corpo">
		<div id="dados">
			<form action="${pageContext.request.contextPath}/CadastrarUsuario" method="post">
				<label>Nome</label>
				<input type="text" name="TxtNome"><br><br>
				<label>CPF</label>
				<input type="text" name="TxtCPF"><br><br>
                                <label>Username</label>
				<input type="text" name="TxtUserName"><br><br>
                                <label>Senha</label>
				<input type="text" name="TxtSenha"><br><br>
				<label>Filial</label>
				<select name="Filial">
                                    <option value="null">Selecione</option>
                                    <c:forEach var="nomeFilial" items="${listaFiliais}">
					<option value="${nomeFilial.nome}">${nomeFilial.nome}</option>
                                    </c:forEach>
				</select><br><br>
				<label>Permissão</label>
				<select name="Permissao">
					<option value="null">Selecione</option>
					<option value="basico">Básico</option>
					<option value="tec">Tec</option>
					<option value="backOffice">Backoffice</option>
					<option value="Gerente">Gerente</option>
				</select><br><br>
								
                                <input type="submit" name="BotaoSalvar" onclick="alert('Usuário cadastrado com sucesso!')" value="Salvar">
			</form>
		</div>		
	</div>
    </body>
</html>
