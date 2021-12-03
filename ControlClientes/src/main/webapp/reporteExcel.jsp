<%--Librería JSTL de Core--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--Librería para dar formato al saldo--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_AR"/>

<%@page contentType="application/vnd.ms-excel"%>
<%
    String nombreArchivo = "Reporte clientes.xls";
    response.setHeader("Content-Disposition", "inline;filename=" + nombreArchivo);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Descargar Excel</title>
    </head>
    <body>
        <h1>Reporte de clientes Excel</h1>
        <br/>
        <table border="1">
            <tr bgcolor="#A9D08E">
                <th>ID</th>
                <th>Nombre</th>
                <th>Apellido</th>
                <th>Email</th>
                <th>Telefono</th>
                <th>Saldo</th>
            </tr>
            <c:forEach var="cliente" items="${clientes}">
                <tr bgcolor="#E2EFDA">
                    <td>${cliente.idCliente}</td>
                    <td>${cliente.nombre}</td>
                    <td>${cliente.apellido}</td>
                    <td>${cliente.email}</td>
                    <td>${cliente.telefono}</td>
                    <td><fmt:formatNumber value="${cliente.saldo}" type="currency"/></td>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <br/>
        <table border="1">
            <tr bgcolor="#A9D08E">
                <th>Total saldo</th>
                <th>Total clientes</th>
            </tr>
            <tr bgcolor="#E2EFDA">
                <th><fmt:formatNumber value="${saldoTotal}" type="currency"/></th>
                <th>${totalClientes}</th>
            </tr>
        </table>
    </body>
</html>
