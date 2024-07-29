import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class usrtabl extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        Connection conn = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost/project", "root", "raman");
            
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            out.println("<html><body>");
            out.println("<table border='5' style='color:white; border-color:white;'>"); 
            out.println("<tr>" + "<td><b> Name </b></td>" + "<td><b> CONTACT </b></td>" + "<td><b> BOOK NAME </b></td>" + "<td><b> BOOK ID </b></td>" + "<td><b> ADDRESS </b></td>" + "<td><b> GENDER </b></td>" + "</tr>");

            st = conn.prepareStatement("SELECT name,phone,book,book_id,aadhar,gender FROM users WHERE name=? AND phone=?;");
            st.setString(1, request.getParameter("name"));
            st.setString(2, request.getParameter("phone"));

            rs = st.executeQuery();
            while (rs.next()) {
                String nam = rs.getString("name");
                String pass = rs.getString("phone");
                String bok = rs.getString("book");
                String boki = rs.getString("book_id");
                String adr = rs.getString("aadhar");
                String gen = rs.getString("gender");

                out.println("<tr>" + "<td>" + nam + "</td>" + "<td>" + pass + "</td>" + "<td>" + bok + "</td>" + "<td>" + boki + "</td>" + "<td>" + adr + "</td>" + "<td>" + gen + "</td>" + "</tr>");
            }
            
            out.println("</table></body></html>");
            
        
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
}
