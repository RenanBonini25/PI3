
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="_css/estilo.css">
        <title>Cadastrar Filial</title>
    </head>
    <body>
        <div id="corpo">
		<div id="dados">
			<form action="${pageContext.request.contextPath}/CadastrarFilial" method="post">
				<label>Nome</label>
				<input type="text" name="TxtNome"><br><br>
				<label>CNPJ</label>
				<input type="text" name="TxtCNPJ"><br><br>
				<label>Endereço</label>
				<input type="text" name="TxtEndereco"><br><br>
				<label>Complemento</label>
				<input type="text" name="TxtComplemento">
				<label>Número</label>
				<input type="text" name="TxtNumeroEnd"><br><br>
				<label>Bairro</label>
				<input type="text" name="TxtBairro">
				<label>CEP</label>
				<input type="text" name="TxtCep"><br><br>
				<label>Cidade</label>
				<input type="text" name="TxtCidade">
				<label>Estado</label>
				<select name="Estados">
					<option value="null">Selecione</option>
					<option value="AC">Acre</option>
					<option value="AL">Alagoas</option>
					<option value="AP">Amapá</option>
					<option value="AM">Amazonas</option>
					<option value="BA">Bahia</option>
					<option value="CE">Ceará</option>
					<option value="DF">Distrito Federal</option>
					<option value="ES">Espírito Santo</option>
					<option value="GO">Goiás</option>
					<option value="MA">Maranhão</option>
					<option value="MT">Mato Grosso</option>
					<option value="MS">Mato Grosso do Sul</option>
					<option value="MG">Minas Gerais</option>
					<option value="PA">Pará</option>
					<option value="PB">Paraíba</option>
					<option value="PR">Paraná</option>
					<option value="PE">Pernambuco</option>
					<option value="PI">Piauí</option>
					<option value="RJ">Rio de Janeiro</option>
					<option value="RN">Rio Grande do Norte</option>
					<option value="RS">Rio Grande do Sul</option>
					<option value="RO">Rondônia</option>
					<option value="RR">Roraima</option>
					<option value="SC">Santa Catarina</option>
					<option value="SP">São Paulo</option>
					<option value="SE">Sergipe</option>
					<option value="TO">Tocantins</option>
				</select><br><br>
				
                                <input type="submit" name="BotaoSalvar" onclick="alert('Filial Cadastrada com sucesso!')" value="Salvar">
			</form>
		</div>		
	</div>
    </body>
</html>
