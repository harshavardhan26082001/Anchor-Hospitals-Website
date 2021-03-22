package ah;

import java.sql.*;

public class MyConnectionProvider implements MyProvider {
	
	static Connection con=null;
    public static Connection getCon(){
	    try{
		    Class.forName("com.mysql.jdbc.Driver");
		    con=DriverManager.getConnection(url,username,password);
	    }
	    catch(Exception e){
		    System.out.println(e);
	    }
	    return con;
    }

}
