package Plato;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import data.PlatoDAO;
import entities.Plato;

/**
 * Servlet implementation class editPlato
 */
@WebServlet("/editplato")
public class EditPlato extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditPlato() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		Plato plato = new Plato();
		plato.setId(id);
		
		PlatoDAO pdao = new PlatoDAO();
		plato = pdao.getPlato(plato);
		
		request.setAttribute("plato", plato);
		request.getRequestDispatcher("WEB-INF/editPlato.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		String nombre = request.getParameter("nombre");
		Float precio = Float.parseFloat(request.getParameter("precio"));
		String descripcion = request.getParameter("descripcion");
		
		Plato plato = new Plato();
		
		plato.setDescripcion(descripcion);
		plato.setId(id);
		plato.setNombre(nombre);
		plato.setPrecio(precio);
		
		PlatoDAO pdao = new PlatoDAO();
		pdao.updateBebida(plato);
		response.sendRedirect("AltaPlato");


		
	}

}