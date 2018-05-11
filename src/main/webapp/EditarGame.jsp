<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Game</title>
    </head>
    <body>
        <c:forEach items="${obterGame}" var="p">
            <div id="corpo">
                <div id="dados">

                    <input type="hidden" value="${p.id}" name="id">
                    <label>Nome</label>
                    <input type="text" value="${p.nome}" name="TxtNome"><br><br>
                    <label>Plataforma</label>
                    <select name="Plataforma">
                        <option value="${p.plataforma}">${p.plataforma}</option>
                        <option value="playstation">Playstation 4</option>
                        <option value="xboxOne">Xbox One</option>
                        <option value="nintendoWii">Nintendo Wii</option>
                    </select><br><br>
                    <label>Categorias</label>
                    <c:forEach items="${categorias}" var="c" >
                        
                        <c:choose>
                            <c:when test="${c.id=='1'}">
                                <input type="checkbox" name="cat1" checked>Ação<br><br>
                            </c:when>
                            <c:otherwise>
                                <input type="checkbox" name="cat1">Ação<br><br>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${c.id=='2'}">
                                <input type="checkbox" name="cat2" checked>Simulador<br><br>
                            </c:when>
                            <c:otherwise>
                                <input type="checkbox" name="cat2">Simulador<br><br>
                            </c:otherwise>
                        </c:choose>
                        <c:choose>
                            <c:when test="${c.id=='3'}">
                                <input type="checkbox" name="cat3" checked>RPG<br><br>
                            </c:when>
                            <c:otherwise>
                                <input type="checkbox" name="cat3">RPG<br><br>
                            </c:otherwise>
                        </c:choose>

                    </c:forEach>
                    <label>Desenvolvedora</label>
                    <input type="text" value="${p.desenvolvedora}" name="TxtDesenvolvedora"><br><br>
                    <label>Indicação Classificativa</label>
                    <input type="text" value="${p.classIndicativa}" name="TxtIndicClassif"><br><br>
                    <label>Preço Compra</label>
                    <input type="text" value="${p.precoCompra}" name="TxtPrecoCompra"><br><br>
                    <label>Preço Venda</label>
                    <input type="text" value="${p.precoVenda}" name="TxtPrecoVenda"><br><br>
                    <label>Quantidade</label>
                    <input type="text" value="${p.quantidade}" name="TxtQuantidade"><br><br>


                    <input type="submit" name="BotaoSalvar" value="Salvar">

                </c:forEach>

            </div>		
        </div>
    </body>
</html>
