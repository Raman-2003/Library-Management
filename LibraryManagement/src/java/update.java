import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class update extends HttpServlet {

  protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException { 

		
		          PrintWriter out = response.getWriter();
		try { 
			 Connection conn = null; 
                         Class.forName("com.mysql.jdbc.Driver"); 
			conn = DriverManager.getConnection("jdbc:mysql://localhost/project","root","raman");

			PreparedStatement st = conn 
					.prepareStatement("UPDATE users SET name=?,phone=?,book=?,aadhar=?,gender=? where book_id=?"); 

			
			st.setString(1, request.getParameter("name"));  
                        st.setString(2, request.getParameter("phn"));  
                        st.setString(3, request.getParameter("book"));  
                        st.setString(4, request.getParameter("adr")); 
                        st.setString(5, request.getParameter("gen"));  
                        st.setString(6, request.getParameter("id")); 

			st.executeUpdate(); 

			st.close(); 
			conn.close(); 
                       out.println("<script type=\"text/javascript\">");
                        out.println("alert('Data Updated successfully!');");
                        out.println("window.location.href='addreader.jsp';");
                        out.println("</script>");
 
		} catch (Exception e) { 
			out.println(e);
		} 
	} 

}


