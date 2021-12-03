package datos;

import dominio.Cliente;
import java.util.List;

public interface IClienteDaoJDBC {
    
    List<Cliente> listar();
    
    Cliente encontrar(Cliente cliente);
    
    List<Cliente> encontrarPorNombre(Cliente cliente);
    
    int insertar(Cliente cliente);
    
    int actualizar(Cliente cliente);
    
    int eliminar(Cliente cliente);
}
