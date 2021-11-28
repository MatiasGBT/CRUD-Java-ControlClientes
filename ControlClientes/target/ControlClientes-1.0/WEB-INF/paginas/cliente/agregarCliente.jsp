<div id="agregarClienteModal" class="modal fade">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-info text-white">
                <h5 class="modal-title">Agregar cliente</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            
            <form action="${pageContext.request.contextPath}/ServletControlador?accion=insertar" method="POST" class="was-validated">
                <div class="modal-body">
                    <div class="mb-2">
                        <label for="nombre" class="form-label">Nombre</label>
                        <input type="text" class="form-control" name="nombre" required/>
                    </div>
                    <div class="mb-2">
                        <label for="apellido" class="form-label">Apellido</label>
                        <input type="text" class="form-control" name="apellido" required/>
                    </div>
                    <div class="mb-2">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control" name="email" required/>
                    </div>
                    <div class="mb-2">
                        <label for="telefono" class="form-label">Telefono</label>
                        <input type="tel" class="form-control" name="telefono" required/>
                    </div>
                    <div class="mb-2">
                        <label for="saldo" class="form-label">Saldo</label>
                        <input type="number" class="form-control" name="saldo" required step="any"/>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" type="submit">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>