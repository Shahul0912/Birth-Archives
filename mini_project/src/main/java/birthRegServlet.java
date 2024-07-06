

import jakarta.servlet.ServletException;
import java.sql.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class 
 */
public class birthRegServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public birthRegServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String child_name = request.getParameter("child_name");
        String birth_time = request.getParameter("birth_time");
        String birth_place = request.getParameter("birth_place");
        String gender = request.getParameter("gender");
        String father_name = request.getParameter("father_name");
        String mother_name = request.getParameter("mother_name");
        String hospital_name = request.getParameter("hospital_name");
        String birthid = request.getParameter("birthid");
        String doctorid = request.getParameter("doctorid");
        String idproof = request.getParameter("idproof");
		
		
		int err=0;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/mini_project";
			Connection con=DriverManager.getConnection(url,"root","");
			
			String sql = "INSERT INTO births (child_name, birth_time, birth_place, gender, father_name, mother_name, hospital_name, birthid, doctorid, idproof) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = con.prepareStatement(sql);
          
            statement.setString(1, child_name);
            statement.setString(2, birth_time);
            statement.setString(3, birth_place);
            statement.setString(4, gender);
            statement.setString(5, father_name);
            statement.setString(6, mother_name);
            statement.setString(7, hospital_name);
            statement.setString(8, birthid);
            statement.setString(9, doctorid);
            statement.setString(10, idproof);
            statement.executeUpdate();
			con.close();
			
					
		}
		catch (Exception e ) {	
			out.println(e); 
			out.println("<h3>Error Try Agian</h3>");
			err=1;
		}
	
		if(err==0) {
			response.sendRedirect("registrationSuccessful.jsp");
			//request.getRequestDispatcher("registrationSuccess.jsp").forward(request, response);//
		}
		
		
			
			
			
	
	}

}
