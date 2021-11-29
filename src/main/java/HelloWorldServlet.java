import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Objects;

@WebServlet(name="HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {


    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws IOException {
        String searchQuery = req.getParameter("q");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();


        if (searchQuery != null) {
            out.printf("<h1>Hello, %s!</h1>", searchQuery);
        } else {
            out.println("<h1>Hello, World!</h1>");
        }







    }
}
