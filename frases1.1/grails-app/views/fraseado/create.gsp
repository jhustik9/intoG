<%--
  Created by IntelliJ IDEA.
  User: jorge
  Date: 26/01/2016
  Time: 10:39
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
            <legend>Nueva Frase</legend>
            <form method="post" action="save">
                <p>Autor: <input type="text" name="autor" value="${fieldValue(bean:user,field:'autor')}"></p>
                <p>Contenido:<textarea name="contenido" rows="10">${fieldValue(bean: user, field: 'contenido')}</textarea></p>
                <input type="submit" value="Guardar"/>
            </form>
        </fieldset>

    </div>
    <div id="errores">
        <g:renderErrors as="list" bean="${user}"/>
    </div>

    %{-- Detecta si hay errores y agrega una clase para poder ponerle estilo, en value
    recuperamos el valor anterior si existe para ponerlo en el campo
    <div class='value ${hasErrors(bean:user,field:'login','errors')}'>
        <input type="text" name="login" value="${fieldValue(bean:user,field:'login')}"/>
    </div>
    --}%

</body>

</html>