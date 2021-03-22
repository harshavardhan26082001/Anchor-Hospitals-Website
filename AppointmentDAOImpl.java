package ah;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
 

public class AppointmentDAOImpl implements AppointmentDAO {
	
	static Connection con;
	static PreparedStatement ps;

	public AppointmentDAOImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public int insertAppointment(Appointment a) {
		System.out.println("clear till now");
		int status=0;
		try{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("insert into ah.appointment (date,time,email,phoneNumber,patientName,patientSurname,patientAge,patientGender,problem) "
									+ " values (?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1, a.getDate());
			ps.setString(2, a.getTime());
			ps.setString(3, a.getEmail());
			ps.setString(4, a.getPhoneNumber());
			ps.setString(5, a.getPatientName());
			ps.setString(6, a.getPatientSurname());
			ps.setString(7, a.getPatientAge());
			ps.setString(8, a.getPatientGender());
			ps.setString(9, a.getProblem());
			
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
		System.out.println(status);
		return status;

	}

	@Override
	public Appointment getAppointment(String email, String date, String name) {
		
		Appointment a = new Appointment();
		
		try{
			con=MyConnectionProvider.getCon();
			ps=con.prepareStatement("select * from ah.appointment where email=? and date=? and name=?");
			ps.setString(1,email);
			ps.setString(2,date);
			ps.setString(3,name);
	
	
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				
				a.setId(rs.getString(1));
				a.setDate(rs.getString(2));
				a.setTime(rs.getString(3));
				a.setEmail(rs.getString(4));
				a.setPhoneNumber(rs.getString(5));
				a.setPatientName(rs.getString(6));
				a.setPatientSurname(rs.getString(7));
				a.setPatientAge(rs.getString(8));
				a.setPatientGender(rs.getString(9));
				a.setProblem(rs.getString(10));
			}
			con.close();
		}
		catch(Exception e){
			System.out.println(e);
		}
		return a;
	}

}
