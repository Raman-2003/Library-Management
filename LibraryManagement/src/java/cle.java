
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class cle extends HttpServlet {

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          request.setAttribute("gen", "");

       
        request.setAttribute("name", "");
     request.getRequestDispatcher("addreader.jsp").forward(request, response);
    }

    
   

}
