<%--
  Created by IntelliJ IDEA.
  User: JORGE
  Date: 25/01/2016
  Time: 11:40 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Lista de citas</title>
    <meta name="layout" content="frases2"/>
</head>

<body>
   %{--<!--<g:each var="actual" in="${frases}">
     <p>Autor: ${actual.autor}</p>
     <p>Contenido: ${actual.contenido}</p>
    </g:each>-->--}%

    <div id="botones">
    <!--'Update' is action, label is 'Some update label'-->
        <a href="create.gsp">Guardar nuevo</a>
    </div>

    <div id="tabla">
    <g:each status="i" in="${frases}" var="actual">
        <!-- Alternate CSS classes for the rows. -->
        <table>
            <tr>
            <form action="delete.gsp" method="post">
                <tr class="${ (i % 2) == 0 ? 'a' : 'b'}" >
                    <td class="ids"><g:textField name="id" value="${actual.id}" /></td>
                    <td><g:textField name="autor" value="${actual.autor}" /></td>
                    <td><g:textArea name="contenido" value="${actual.contenido}" /></td>
                    <td><g:actionSubmit value="Ver" action="show"></g:actionSubmit></td>
                    <td><g:actionSubmit value="Edit" action="edit"></g:actionSubmit></td>
                    <td><input type="submit" value="Borrar"></td>
                    <br/>
                </tr>
            </form>
            </tr>
        </table>
    </g:each>

   </div>

</body>
</html>