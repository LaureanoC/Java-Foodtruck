package data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

import entities.Cliente;
import entities.Empleado;
import entities.Pedido;

public class PedidoDAO {

	
	public LinkedList<Pedido> getAll() {
		Statement stmt = null;
		ResultSet rs = null;
		LinkedList<Pedido> pedidos = new LinkedList<Pedido>();

		try {
			stmt = DbConnector.getInstancia().getConn().createStatement();
			rs = stmt.executeQuery("SELECT * FROM Pedido");

			if (rs != null) {
				while (rs.next()) {

					Pedido p = new Pedido();
					Empleado e = new Empleado();
					Cliente c = new Cliente();
					
					p.setId(rs.getInt("idPedido"));
					p.setEstado(rs.getString("estadoPedido"));
					p.setTipoPedido(rs.getString("tipoPedido"));
					p.setFechaHora(rs.getTimestamp("fechaHoraPedido"));
					String dniEmpleado = rs.getString("dniEmpleado");
					String dniCliente = rs.getString("dniCliente");
					
					e.setDni(dniEmpleado);
					c.setDni(dniCliente);
					
					p.setEmpleado(e);
					p.setCliente(c);
					

					pedidos.add(p);
				}

			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				DbConnector.getInstancia().releaseConn();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return pedidos;
	}
	
	public Pedido getPedido(Pedido p) {
		PreparedStatement stmt = null;
		ResultSet rs = null;
		Pedido pe = null;
		EmpleadoDAO edao = new EmpleadoDAO();
		ClienteDAO cdao = new ClienteDAO();
		try {
			stmt = DbConnector.getInstancia().getConn().prepareStatement("Select * from Pedido WHERE idPedido=?");

			stmt.setInt(1, p.getId());

			rs = stmt.executeQuery();

			if (rs != null & rs.next()) {

				pe = new Pedido();
				pe.setId(rs.getInt("idPedido"));
				pe.setFechaHora(rs.getTimestamp("fechaHoraPedido"));
				
				pe.setEstado(rs.getString("estadoPedido"));
				pe.setTipoPedido(rs.getString("tipoPedido"));
				
		
				Empleado e = new Empleado();
				e.setDni(rs.getString("dniEmpleado"));
				
				Cliente c = new Cliente();
				c.setDni(rs.getString("dniCliente"));
				
				pe.setEmpleado(edao.getEmpleado(e));
				pe.setCliente(cdao.getCliente(c));
				
				
			}

		} catch (SQLException e) {
			e.printStackTrace();

		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (stmt != null) {
					stmt.close();
				}
				DbConnector.getInstancia().releaseConn();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return pe;
	}
	
	public void newPedido(Pedido p) {
		PreparedStatement stmt = null;
		try {
			stmt = DbConnector.getInstancia().getConn()
					.prepareStatement("INSERT INTO Pedido (estadoPedido, tipoPedido, dniEmpleado, dniCliente) VALUES (?,?,?,?)");

			stmt.setString(1,p.getEstado());
			stmt.setString(2, p.getTipoPedido());
			stmt.setString(3, p.getEmpleado().getDni());
			stmt.setString(4, p.getCliente().getDni());
			
			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				DbConnector.getInstancia().releaseConn();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public void updateEstadoPedido(Pedido p) {

		PreparedStatement stmt = null;
		try {

			stmt = DbConnector.getInstancia().getConn()
					.prepareStatement("UPDATE Cliente SET estadoPedido=? where idPedido=?");
			stmt.setString(1, p.getEstado());
			stmt.setInt(2, p.getId());
			

			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (stmt != null) {
					stmt.close();
				}
				DbConnector.getInstancia().releaseConn();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

	
	}
}
