package epam;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Servlet implementation for simple JSP page with three buttons
 */
public class Servlet extends HttpServlet {

    private List<String> requestList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        requestList.add(req.getHeader("button"));
        for (String request : requestList) {
            resp.getWriter().write(request + "</br>");
        }
    }
}