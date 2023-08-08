package data;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import entities.*;

public class PlatoDAO {
	///////////////////////////////////////////////////////////////////////////////
	public LinkedList<Plato> getAll(){
		Statement stmt=null;
		ResultSet rs=null;
		LinkedList<Plato> platos= new LinkedList<>();	
		
		try {
			stmt= DbConnector.getInstancia().getConn().createStatement();
			rs= stmt.executeQuery("select idPlato, nombrePlato, precioPlato, descripcion from plato");
			
			if(rs!=null) {
				while(rs.next()) {
					Plato p = new Plato();
					p.setId(rs.getInt("idPlato"));
					p.setNombre(rs.getString("nombrePlato"));
					
					p.setPrecio(rs.getFloat("precioPlato"));
					p.setDescripcion(rs.getString("descripcion"));
					
					platos.add(p);
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			try {
				if(rs!=null) {rs.close();}
				if(stmt!=null) {stmt.close();}
				DbConnector.getInstancia().releaseConn();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
		
		return platos;
	}
	////////////////////////////////////////////////////
	
public void newPlato(Plato newPlato) {
		
		ResultSet keyRS=null;
		PreparedStatement stmt=null;
		
		try {			
			
			
			stmt = DbConnector.getInstancia().getConn()
			.prepareStatement("insert into plato (nombrePlato, precioPlato, descripcion)" + "values(?,?,?)",
					Statement.RETURN_GENERATED_KEYS);
			
			stmt.setString(1, newPlato.getNombre());
			stmt.setFloat(2, newPlato.getPrecio());
			stmt.setString(3, newPlato.getDescripcion());
			stmt.executeUpdate();
			keyRS= stmt.getGeneratedKeys();
			
			if(keyRS != null && keyRS.next()) {
				newPlato.setId(keyRS.getInt(1));
			}
			
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
////////////////////////////////////////////////////////////////////

public void delPlato(Plato delPlato) {
	
	PreparedStatement stmt = null;
	try {

		stmt = DbConnector.getInstancia().getConn().prepareStatement("delete from plato where idPlato=?");
		stmt.setInt(1, delPlato.getId());
		stmt.executeUpdate();

	} catch (SQLException ex) {
		ex.printStackTrace();
	} finally {
		try {
			if (stmt != null) {
				stmt.close();
			}
			DbConnector.getInstancia().releaseConn();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}

}

////////////////////

public void updateBebida(Plato updPlato) {
	PreparedStatement stmt = null;
	try {
		stmt = DbConnector.getInstancia().getConn()
				.prepareStatement("UPDATE plato SET nombrePlato=?, precioPlato=?, descripcion=? where idPlato=?");
	stmt.setString(1, updPlato.getNombre());
	stmt.setFloat(2, updPlato.getPrecio());
	stmt.setString(3, updPlato.getDescripcion());
	stmt.setInt(4, updPlato.getId());
	stmt.executeUpdate();
	

	} catch (SQLException ex) {
		ex.printStackTrace();
	} finally {
		try {
			if (stmt != null) {
				stmt.close();
			}
			DbConnector.getInstancia().releaseConn();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
	}
 }
	
	//////////////////////////////////////


public Plato getPlato(Plato p) {
	PreparedStatement stmt = null;
	ResultSet rs = null;
	Plato pl = null;
	try {
		stmt = DbConnector.getInstancia().getConn().prepareStatement("Select * from Plato where idPlato=?");

		stmt.setInt(1, p.getId());

		rs = stmt.executeQuery();

		if (rs != null & rs.next()) {

			pl = new Plato();
			pl.setId(rs.getInt("idPlato"));
			pl.setNombre(rs.getString("nombrePlato"));
			pl.setPrecio(rs.getFloat("precioPlato"));
			pl.setDescripcion(rs.getString("descripcion"));
			
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

	return pl;
}


}