import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "PageCounterServlet", urlPatterns = "/count")
public class PageCounterServlet extends HttpServlet {
    int pageViewCount = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String searchQuery = req.getParameter("q");
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        pageViewCount++;

        out.printf("<h1>You have viewed this page %s times!</h1>", pageViewCount);

        if (searchQuery.equalsIgnoreCase("true")) {
            pageViewCount = 0;
        }

    }
}
