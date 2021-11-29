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
    int hitCount = 0;

    protected void doGet(HttpServletRequest req, HttpServletResponse response) throws IOException {
        String searchQuery = req.getParameter("q");
        String resetCount = req.getParameter("r");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String printHitCount = "<h3>" + hitCount + "</h3>";
//        hitCount++;


        if (searchQuery != null) {
            out.printf("<h1>Hello, %s!</h1>", searchQuery);
            hitCount++;
        } else {
            out.println("<h1>Hello, World!</h1>");
            hitCount++;
        }
        out.println("<h2>Hit counter</h2>");
        out.println(printHitCount);

        if (resetCount.equalsIgnoreCase("true")) {
            hitCount = 0;
        }






    }
}
