<section id="actions" class="py-4 mb-4 bg-light">
    <div class="container">
        <div class="row">
            <div class="col-md-3 d-grid gap-2">
                <a href="index.jsp" class="btn btn-light">
                    <i class="fas fa-arrow-left"></i> Regresar al inicio
                </a>
            </div>
            <div class="col-md-3 d-grid gap-2">
                <!-- Este botón hara el submit del formulario de editar cliente -->
                <button type="submit" class="btn btn-success">
                    <i class="fas fa-check"></i> Guardar cliente
                </button>
            </div>
            <div class="col-md-3 d-grid gap-2">
                <a href="${pageContext.request.contextPath}/ServletControlador?accion=eliminar&idCliente=${cliente.idCliente}"
                   class="btn btn-danger">
                    <i class="fas fa-trash"></i> Eliminar cliente
                </a>
            </div>
        </div>
    </div>  
</section>