package web;

import datos.ClienteDaoJDBC;
import dominio.Cliente;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/ServletControlador")
public class ServletControlador extends HttpServlet{
    /*Método para que el Servlet controlador recupere la información de clientes, lo coloque
    en el alcance request y envíe la información hacia el jsp de clientes*/
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion=req.getParameter("accion");
        if(accion!=null) {
            switch (accion){
                case "editar":
                    this.editarCliente(req, resp);
                    break;
                case "eliminar":
                    this.eliminarCliente(req, resp);
                    break;
                //La opción default reenvía a la página de inicio clientes.jsp, calculando
                //todos los valores con el método acción default
                default:
                    this.accionDefault(req, resp);
            }
        } else {
            this.accionDefault(req, resp);
        }
    }
    
    private void accionDefault(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cliente> clientes=new ClienteDaoJDBC().listar();
        System.out.println("Clientes: " + clientes);
        HttpSession sesion=req.getSession();
        sesion.setAttribute("clientes", clientes);
        sesion.setAttribute("totalClientes", clientes.size());
        sesion.setAttribute("saldoTotal", this.calcularSaldoTotal(clientes));
        resp.sendRedirect("clientes.jsp");
    }
    
    private double calcularSaldoTotal(List<Cliente> clientes) {
        double saldoTotal=0;
        for(Cliente cliente: clientes) {
            saldoTotal=saldoTotal + cliente.getSaldo();
        }
        return saldoTotal;
    }
    
    //Este método recupera el idCliente que se envía como parámetro del link de editar,
    //se recuperan sus datos y se comparten en el alcance de request
    private void editarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idCliente=Integer.parseInt(req.getParameter("idCliente"));
        Cliente cliente=new ClienteDaoJDBC().encontrar(new Cliente(idCliente));
        req.setAttribute("cliente", cliente);
        String jspEditar="/WEB-INF/paginas/cliente/editarCliente.jsp";
        req.getRequestDispatcher(jspEditar).forward(req, resp);
    }
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String accion=req.getParameter("accion");
        if(accion!=null) {
            switch (accion){
                case "insertar":
                    this.insertarCliente(req, resp);
                    break;
                case "modificar":
                    this.modificarCliente(req, resp);
                    break;
                default:
                    this.accionDefault(req, resp);
            }
        } else {
            this.accionDefault(req, resp);
        }
    }
    
    private void insertarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Recuperación de los valores del formulario agregarCliente
        String nombre=req.getParameter("nombre");
        String apellido=req.getParameter("apellido");
        String email=req.getParameter("email");
        String telefono=req.getParameter("telefono");
        double saldo=0;
        String saldoString=req.getParameter("saldo");
        if(saldoString!=null && !saldoString.equals("")) {
            saldo=Double.parseDouble(saldoString);
        }
        
        //Creación de objeto cliente
        Cliente cliente=new Cliente(nombre, apellido, email, telefono, saldo);
        
        //Insertar el cliente en la base de datos
        int registrosModificados=new ClienteDaoJDBC().insertar(cliente);
        System.out.println("Registros modificados totales: " + registrosModificados);
        
        //Redirección hacia acción por default (para volver a mostrar la información en la pág principal)
        this.accionDefault(req, resp);
    }
    
    private void modificarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Recuperación de los valores del formulario editarCliente
        //A diferencia del método insertarCliente, este recupera el idCliente porque ya existe en la bbdd
        int idCliente=Integer.parseInt(req.getParameter("idCliente"));
        String nombre=req.getParameter("nombre");
        String apellido=req.getParameter("apellido");
        String email=req.getParameter("email");
        String telefono=req.getParameter("telefono");
        double saldo=0;
        String saldoString=req.getParameter("saldo");
        if(saldoString!=null && !saldoString.equals("")) {
            saldo=Double.parseDouble(saldoString);
        }
        
        //Creación de objeto cliente
        Cliente cliente=new Cliente(idCliente, nombre, apellido, email, telefono, saldo);
        
        //Modificar el cliente en la base de datos
        int registrosModificados=new ClienteDaoJDBC().actualizar(cliente);
        System.out.println("Registros modificados totales: " + registrosModificados);
        
        //Redirección hacia acción por default (para volver a mostrar la información en la pág principal)
        this.accionDefault(req, resp);
    }
    
    private void eliminarCliente(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int idCliente=Integer.parseInt(req.getParameter("idCliente"));
        
        //Creación de objeto cliente
        Cliente cliente=new Cliente(idCliente);
        
        //Eliminar el cliente en la base de datos
        int registrosModificados=new ClienteDaoJDBC().eliminar(cliente);
        System.out.println("Registros modificados totales: " + registrosModificados);
        
        //Redirección hacia acción por default (para volver a mostrar la información en la pág principal)
        this.accionDefault(req, resp);
    }
}
