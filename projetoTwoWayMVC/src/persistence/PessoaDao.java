package persistence;

import entity.Pessoa;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PessoaDao {

	Connection con;
	PreparedStatement stmt;
	ResultSet rs;

	public void open() throws Exception
	{
		 Class.forName("com.mysql.jdbc.Driver");
		 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/spring","root","");
	}	
	
	public void close() throws Exception{
		con.close();
	}
	
	public void create(Pessoa p) throws Exception 
	{
		open();
		stmt = con.prepareStatement("insert into pessoa values (null,?,?)");
		stmt.setString(1, p.getNome());
		stmt.setString(2, p.getEmail());
		stmt.execute();
		stmt.close();
		close();
	}

	public List<Pessoa> findAll() throws Exception 
	{
		open();
		List<Pessoa> listaPessoas = new ArrayList<Pessoa>();
		stmt = con.prepareStatement("select * from pessoa order by nome asc");
		rs = stmt.executeQuery();
		while (rs.next()) 
		{
			Pessoa oPessoa = new Pessoa();
			oPessoa.setIdPessoa(rs.getInt(1));
			oPessoa.setNome(rs.getString(2));
			oPessoa.setEmail(rs.getString(3));
			listaPessoas.add(oPessoa);
		}
		close();
		return listaPessoas;
	}

	public void delete(Integer cod) throws Exception 
	{
		open();
		stmt = con.prepareStatement("delete from pessoa where idPessoa=?");
		stmt.setInt(1, cod);
		stmt.execute();
		stmt.close();
		close();
	}
}
