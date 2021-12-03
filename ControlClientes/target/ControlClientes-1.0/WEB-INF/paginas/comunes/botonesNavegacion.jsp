<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3 d-grid gap-2">
                <a href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#agregarClienteModal">
                    <i class="fas fa-plus"></i> Agregar cliente
                </a>
            </div>
            <div class="col-md-3 d-grid gap-2 mt-2 mt-md-0">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=descargar" class="btn btn-success">
                    <i class="fas fa-download"></i> Descargar Excel
                </a>
            </div>
            <div class="col-md-6 d-grid gap-2 mt-2 mt-md-0">
                <form class="d-flex" action="${pageContext.request.contextPath}/ServletControlador?accion=encontrar"
                      method="POST" class="was-validated">
                    <input class="form-control me-2" type="search" placeholder="Buscar por nombre" aria-label="Search"
                           name="nombre" required>
                    <button class="btn btn-outline-success" type="submit"><i class="fas fa-search"></i></button>
                </form>
            </div>
        </div>
    </div>
</section>