import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.*;
import jakarta.servlet.http.*;
import jakarta.servlet.*;
import java.sql.*;


/**
 * Servlet implementation class login
 */
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public loginservlet() {
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
		PrintWriter out=response.getWriter();
		response.setContentType("text/html");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		int err=0;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
	
			String url="jdbc:mysql://localhost:3306/mini_project";
			Connection con=DriverManager.getConnection(url,"root","");
			
			PreparedStatement st=con.prepareStatement("SELECT uname,email FROM users WHERE (email = ? OR uname = ?) AND password = ? limit 1");
			st.setString(1, username);
			st.setString(2, username);
			st.setString(3, password);;
			ResultSet res=st.executeQuery();
			
			
			if(!res.next()) {
				response.sendRedirect("login.jsp?invalid=true");
		
				return;
				
				
			}
			
			HttpSession session=request.getSession(true);

			userDetails ud=new userDetails(res.getString("uname"),res.getString("email"));
			out.println(ud.uname);
			session.setAttribute("userDetails",ud);
			session.setAttribute("uname", ud.uname);
			
			
			
			
		}
		catch(Exception e) {
			err=1;
			out.println(e);
		}
		
		if(err==0) {
		
		response.sendRedirect("dashboard.jsp");
		}
	
	}

}