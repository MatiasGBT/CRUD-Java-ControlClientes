<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="/WEB-INF/paginas/comunes/etiquetasHead.jsp"/>
        <title>Control de clientes</title>
    </head>
    <body class="text-break">
        <!-- Cabecero -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>

        <!-- Botones de navegación -->
        <section id="actions" class="py-4 mb-4 bg-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 d-grid gap-2">
                        <a href="index.jsp" class="btn btn-light">
                            <i class="fas fa-arrow-left"></i> Regresar al inicio
                        </a>
                    </div>
                    <div class="col-md-3 d-grid gap-2">
                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=editar&idCliente=${cliente.idCliente}"
                           class="btn btn-secondary">
                            <i class="fas fa-edit"></i> Editar
                        </a>

                    </div>
                    <div class="col-md-3 d-grid gap-2 mt-2 mt-md-0">
                        <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
                           class="btn btn-danger">
                            <i class="fas fa-trash"></i> Eliminar cliente
                        </a>
                    </div>
                </div>
            </div>  
        </section>

        <!-- Cliente -->
        <section id="details">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="card">
                            <div class="card-header">
                                <h4>${cliente.apellido} ${cliente.nombre}</h4>
                            </div>
                            <div class="card-body">
                                <div class="mb-2">
                                    <p class="fs-4">Nombre: ${cliente.nombre}</p>
                                </div>
                                <div class="mb-2">
                                    <p class="fs-4">Apellido: ${cliente.apellido}</p>
                                </div>
                                <div class="mb-2">
                                    <p class="fs-4">Email: ${cliente.email}</p>
                                </div>
                                <div class="mb-2">
                                    <p class="fs-4">Telefono: ${cliente.telefono}</p>
                                </div>
                                <div class="mb-2">
                                    <p class="fs-4">Saldo: ${cliente.saldo}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer -->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>
