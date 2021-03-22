package ah;

public interface AppointmentDAO {
	
	public int insertAppointment(Appointment c);
	public Appointment getAppointment(String email, String date, String name);

}
