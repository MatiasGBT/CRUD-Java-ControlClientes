<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/94d22320fc.js" crossorigin="anonymous"></script>
        <title>Editar cliente</title>
    </head>
    <body class="text-break">
        <!-- Cabecero -->
        <jsp:include page="/WEB-INF/paginas/comunes/cabecero.jsp"/>

        <form action="${pageContext.request.contextPath}/ServletControlador?accion=modificar&idCliente=${cliente.idCliente}"
              method="POST" class="was-validated">
            <!-- Botones de Navegación -->
            <jsp:include page="/WEB-INF/paginas/comunes/botonesNavegacionEdicion.jsp"/>
            <section id="details">
                <div class="container">
                    <div class="row">
                        <div class="col">
                            <div class="card">
                                <div class="card-header">
                                    <h4>Editar cliente</h4>
                                </div>
                                <div class="card-body">
                                    <div class="mb-2">
                                        <label for="nombre" class="form-label">Nombre</label>
                                        <input type="text" class="form-control" name="nombre" required value="${cliente.nombre}"/>
                                    </div>
                                    <div class="mb-2">
                                        <label for="apellido" class="form-label">Apellido</label>
                                        <input type="text" class="form-control" name="apellido" required value="${cliente.apellido}"/>
                                    </div>
                                    <div class="mb-2">
                                        <label for="email" class="form-label">Email</label>
                                        <input type="email" class="form-control" name="email" required value="${cliente.email}"/>
                                    </div>
                                    <div class="mb-2">
                                        <label for="telefono" class="form-label">Telefono</label>
                                        <input type="tel" class="form-control" name="telefono" required value="${cliente.telefono}"/>
                                    </div>
                                    <div class="mb-2">
                                        <label for="saldo" class="form-label">Saldo</label>
                                        <input type="number" class="form-control" name="saldo" required value="${cliente.saldo}" step="any"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </form>
        <!-- Footer -->
        <jsp:include page="/WEB-INF/paginas/comunes/piePagina.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

    </body>
</html>
