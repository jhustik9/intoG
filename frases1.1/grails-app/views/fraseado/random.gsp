<%--
  Created by IntelliJ IDEA.
  User: jorge
  Date: 25/01/2016
  Time: 11:01
--%>

<%@ page import="frases.FraseadoService" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="frases">
</head>

<body>
    <div id="frase">
        <p>Valores generados en el metodo random() del controller</p>
        <q>${frase.contenido}</q>
        <p>${frase.autor}</p>
        <p>${frase.fecha}</p>
    </div>
</body>
</html>