<%--Librería JSTL de Core--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--Librería para dar formato al saldo--%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:setLocale value="es_AR"/>

<%--Lista clientes--%>
<section id="clientes">
    <div class="container">
        <div class="row">
            <div class="col-lg-9">
                <div class="card">
                    <div class="card-header">
                        <h4>Listado de clientes:</h4>
                    </div>
                    <!-- table-striped sirve para que se aplique un estilo distinto a cada renglón de la tabla -->
                    <table class="table table-striped">
                        <thead class="table-dark">
                        <th>#</th>
                        <th>Nombre</th>
                        <th>Saldo</th>
                        <th></th> <!-- Columna vacia por temas de diseño, va el botón de editar registro -->
                        </thead>
                        <tbody>
                            <c:forEach var="cliente" items="${clientes}">
                                <tr>
                                    <td>${cliente.idCliente}</td>
                                    <td>${cliente.nombre} ${cliente.apellido}</td>
                                    <td><fmt:formatNumber value="${cliente.saldo}" type="currency"/></td>
                                    <td class="text-center">
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=encontrar&idCliente=${cliente.idCliente}"
                                           class="btn btn-info text-white col-md-3">
                                            <i class="fas fa-eye"></i>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                                           class="btn btn-secondary col-md-3">
                                            <i class="fas fa-edit"></i>
                                        </a>
                                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
                                           class="btn btn-danger d-none d-sm-inline-block col-0 col-sm-3">
                                            <i class="fas fa-trash"></i>
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <!-- Tarjetas de los totales -->
            <div class="col-lg-3">
                <div class="card text-center bg-danger text-white mb-3">
                    <div class="card-body">
                        <h3>Saldo total:</h3>
                        <h4 class="display-4">
                            <fmt:formatNumber value="${saldoTotal}" type="currency"/>
                        </h4>
                    </div>
                </div>

                <div class="card text-center bg-success text-white mb-3">
                    <div class="card-body">
                        <h3>Total clientes: </h3>
                        <h4 class="display-4">
                            <i class="fas fa-users"></i> ${totalClientes}
                        </h4>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>

<!-- Modal de agregar cliente -->
<jsp:include page="/WEB-INF/paginas/cliente/agregarCliente.jsp"/>