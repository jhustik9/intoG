<%--
  Created by IntelliJ IDEA.
  User: jorge
  Date: 26/01/2016
  Time: 17:58
--%>

<%@ page import="frases.Fraseado" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Lista de citas</title>
    <meta name="layout" content="frases2"/>
</head>

<body>
<div id="botones1">
    <a href="index.gsp">Frases</a>
</div>
<div id="formulario">

    <fieldset>
        <legend>Editar Frase</legend>
        <form method="post" action="${createLink(action: 'update')}">
            <p><label>Autor: </label><input type="text" name="autor" required="true" value="${f1.autor}"></p>
            <p><label>Contenido: </label><textarea name="contenido" rows="10" required="true">${f1.contenido}</textarea></p>
            <p class="ids"><label>Id: </label><input type="text" name="id"  value="${f1.id}"></p>
            <g:actionSubmit value="Cancelar" action="index"></g:actionSubmit>
            <input type="submit" value="Guardar">
        </form>
    </fieldset>

</div>
</body>

</html>