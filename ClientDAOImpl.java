package ah;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClientDAOImpl implements ClientDAO {
	
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertClient(Client c) {
		
		int status=0;
		try{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("insert into ah.client values(?,?,?,?,?,?,?,?)");
			
			
			ps.setString(1, c.getFirstname());
			ps.setString(2, c.getLastname());
			ps.setString(3, c.getAge());
			ps.setString(4, c.getGender());
			ps.setString(5, c.getPhonenumber());
			ps.setString(6, c.getAddress());
			ps.setString(7, c.getPassword());
			ps.setString(8, c.getEmailid());
			
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
		return status;
		
	}

	@Override
	public Client getClient(String email, String password) {
		
		Client c=new Client();
		try{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select * from ah.client where email=? and password=? ");
			ps.setString(1,email);
			ps.setString(2,password);
	
	
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				c.setEmailid(rs.getString(8));
				c.setFirstname(rs.getString(1));
				c.setLastname(rs.getString(2));
				c.setAge(rs.getString(3));
				c.setGender(rs.getString(4));
				c.setPhonenumber(rs.getString(5));
				c.setAddress(rs.getString(6));
				c.setPassword(rs.getString(7));
			}
		}
		catch(Exception e){
			System.out.println(e);
		}
		return c;
		}
		
	}


