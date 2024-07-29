
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;


public class removeuser extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         PrintWriter out = response.getWriter();
      
       Statement stmt=null;
       
       String  id=request.getParameter("id");
  
     
        try{
             Connection con=null;
            Class.forName("com.mysql.jdbc.Driver");
            
            con = DriverManager.getConnection("jdbc:mysql://localhost/project","root","raman");

            PreparedStatement st = con.prepareStatement("delete from users where book_id=?"); 
            st.setString(1, request.getParameter("id")); 

			st.executeUpdate(); 

			st.close(); 
			con.close(); 
             out.println("<script type=\"text/javascript\">");
            out.println("alert('Data Deleted successfully!');");
            out.println("window.location.href='removereader.jsp';");
            out.println("</script>");
        
        }
        catch(Exception e){
             out.println(e);
        }
    }

   

}
 