import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;


public class auth extends HttpServlet {

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String  id=request.getParameter("id");
      String  pass=request.getParameter("password");
      
       PrintWriter out = response.getWriter();
       
      if(id.equals("123") && pass.equals("123"))
      {
      response.sendRedirect("adminControl.jsp");
      }
      else{
          out.println("<script type=\"text/javascript\">");
            out.println("alert('WRONG ID OR PASSWORD');");
            out.println("window.location = 'intro.jsp';"); 
            out.println("</script>");
      
      }
    }

  
}
