package ah;

import java.io.IOException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 * Servlet implementation class AppointmentProcesser
 */
@jakarta.servlet.annotation.WebServlet("/AppointmentProcesser")
public class AppointmentProcesser extends jakarta.servlet.http.HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AppointmentProcesser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response) throws jakarta.servlet.ServletException, IOException {
		
		try{
			AppointmentDAO adao=new AppointmentDAOImpl();
			jakarta.servlet.http.HttpSession session= request.getSession();
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
			LocalDateTime now = LocalDateTime.now();
			String dati [] = dtf.format(now).split(" ");
			System.out.println("Date = "+dati[0]);
			System.out.println("time = "+dati[1]);
			
			
			String emailid=(String) session.getAttribute("emailid");
			
			//String submitType=request.getParameter("submit");

			Appointment a =new Appointment();
			String name = request.getParameter("name").toString();
			String surname = request.getParameter("surname").toString();
			String age = request.getParameter("age").toString();
			String gender = request.getParameter("gender").toString();
			String phonenumber = request.getParameter("phonenumber").toString();
			String problem = request.getParameter("problem").toString();
			
			a.setEmail(emailid);
			a.setDate(dati[0]);
			a.setTime(dati[1]);
			a.setPatientName(name);
			a.setPatientSurname(surname);
			a.setPatientAge(age);
			a.setPatientGender(gender);
			a.setPhoneNumber(phonenumber);
			a.setProblem(problem);
			
			session.setAttribute("name",name);
			session.setAttribute("submitdate", dati[0]);
			session.setAttribute("submittime", dati[1]);
			session.setAttribute("surname", surname);
			session.setAttribute("age", age);
			session.setAttribute("gender", gender);
			session.setAttribute("phonenumber", phonenumber);
			session.setAttribute("problem", problem);
			
			
			//if(submitType.equals("submit") && a!=null ){
			adao.insertAppointment(a);

			request.getRequestDispatcher("reportdetails.jsp").forward(request, response);
			//}
		}

		catch(Exception e){
			System.out.print(e);
		}
	}
}
