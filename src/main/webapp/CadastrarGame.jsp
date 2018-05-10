
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="_css/estilo.css">
        <title>Cadastrar Produto</title>
    </head>
    <body>
        <div id="corpo">
		<div id="dados">
			<form action="${pageContext.request.contextPath}/CadastrarGame" method="post">
				<label>Nome</label>
				<input type="text" name="TxtNome"><br><br>
				<label>Plataforma</label>
				<select name="Plataforma">
					<option value="null">Selecione</option>
					<option value="playstation">Playstation 4</option>
					<option value="xboxOne">Xbox One</option>
					<option value="nintendoWii">Nintendo Wii</option>
				</select><br><br>
                                <label>Categorias</label>
				<input type="checkbox" name="cat1">Ação<br><br>
				<input type="checkbox" name="cat2">Simulador<br><br>
				<input type="checkbox" name="cat3">RPG<br><br>
                                <label>Desenvolvedora</label>
				<input type="text" name="TxtDesenvolvedora"><br><br>
                                <label>Indicação Classificativa</label>
				<input type="text" name="TxtIndicClassif"><br><br>
                                <label>Preço Compra</label>
				<input type="text" name="TxtPrecoCompra"><br><br>
                                <label>Preço Venda</label>
				<input type="text" name="TxtPrecoVenda"><br><br>
                                <label>Quantidade</label>
				<input type="text" name="TxtQuantidade"><br><br>
				
								
                                <input type="submit" name="BotaoSalvar" onclick="alert('Produto cadastrado com sucesso!')" value="Salvar">
			</form>
		</div>		
	</div>
    </body>
</html>
