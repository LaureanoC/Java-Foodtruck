package pruebas;

import java.util.LinkedList;
import data.EmpleadoDAO;
import entities.Empleado;

public class PruebaEmpleadoDAO {

	public static void main(String[] args) {
		
	// getAll
				EmpleadoDAO edao = new EmpleadoDAO();
				
				LinkedList<Empleado> empleados = edao.getAll();
				
				String listado = "";
				for (Empleado c : empleados) {
					
					listado += " ID: " + c.getDni() + " Nombre: " + c.getNombre() + " Turno: " + c.getTurno();
					
				}
					
				System.out.println("getall()");
				System.out.println(listado);
				
				
				
	// Por DNI
				
				
				Empleado e2 = edao.getEmpleado(new Empleado("42033727", null, null)); 
			
				listado = " ID: " + e2.getDni() + " Nombre: " + e2.getNombre() + " Dir: " + e2.getTurno();
				
				System.out.println("por dni");
				
				System.out.println(listado);
				
		
	// Insert empleado
				
				edao.newEmpleado(new Empleado("42950001", "Lausito", "Tarde"));
				
				System.out.println("Empleado Insertado");
				
	// Update empleado
				
				edao.updateEmpleado(new Empleado("42950001", "Laureano", "Mañana"));
				
				System.out.println("Empleado Actualizado");
	
	// Delete Empleado
				
				edao.deleteEmpleado(new Empleado("42950001", null, null));
				
				System.out.println("Empleado Eliminado");
				
				
	}
	
	

}
