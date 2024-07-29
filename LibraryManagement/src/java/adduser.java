
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;


public class adduser extends HttpServlet {
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
         PrintWriter out = response.getWriter();
       Connection con=null;
       Statement stmt=null;
      // get student details
      String  name=request.getParameter("name");
      String  book=request.getParameter("book");
      String  conn=request.getParameter("conn");
      String  id=request.getParameter("id");
      String  adr=request.getParameter("adr");
      String  gen=request.getParameter("gen");
     
     
        try{
            Class.forName("com.mysql.jdbc.Driver");
            
            con = DriverManager.getConnection("jdbc:mysql://localhost/project","root","raman");

            stmt = con.createStatement();
            stmt.executeUpdate("insert into users values('"+name+"','"+conn+"','"+book+"','"+id+"','"+adr+"','"+gen+"')");
            
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Data inserted successfully!');");
            out.println("window.location.href='addreader.jsp';");
            out.println("</script>");
        
        }
        catch(Exception e){
            
        }
    }

   

}
 