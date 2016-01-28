<%--
  Created by IntelliJ IDEA.
  User: jorge
  Date: 26/01/2016
  Time: 15:50
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="frases2">
</head>

<body>
    <div id="botones2">
        <a href="index.gsp">Frases</a>
        <a href="create.gsp">Nuevo Frase</a>
    </div>
    <div id="cita">
        <h2>Frase de:</h2>

        <p><strong>Autor:</strong> ${f.autor}</p>
        <p><strong>Contenido:</strong> ${f.contenido}</p>
        <p><strong>Fecha:</strong> ${f.fecha}</p>

    </div>
</body>
</html>