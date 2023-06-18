package pruebas;

import entities.Cliente;

import java.util.LinkedList;

import data.ClienteDAO;

public class PruebaClienteDAO {

	public static void main(String[] args) {
		
		
		// getAll
		ClienteDAO cdao = new ClienteDAO();
		
		LinkedList<Cliente> clientes = cdao.getAll();
		
		String listado = "";
		for (Cliente c : clientes) {
			
			listado += " ID: " + c.getDni() + " Nombre: " + c.getNombre() + " Dir: " + c.getDireccion();
			
		}
			
		System.out.println("getall()");
		System.out.println(listado);
		
	
		// Por DNI
		
		
		Cliente c2 = cdao.getCliente(new Cliente("42011531", null, null)); 
	
		listado = " ID: " + c2.getDni() + " Nombre: " + c2.getNombre() + " Dir: " + c2.getDireccion();
		
		System.out.println("por dni");
		
		System.out.println(listado);
		
	
		// Insert Cliente
		
		cdao.newCliente(new Cliente("42950000", "Laureano", "Alvear 310"));
		
		System.out.println("Cliente insertado");
		
		// Update cliente
		
		cdao.updateCliente(new Cliente("42950000", "Laureano Neyén", "Alvear 777"));
		
		System.out.println("Cliente modificado");
		
		// Delete cliente
		
		cdao.deleteCliente(new Cliente("42950000", "Laureano Neyén", "Alvear 777"));
		
		System.out.println("Se borro el cliente");
		
	}
	
	

}
