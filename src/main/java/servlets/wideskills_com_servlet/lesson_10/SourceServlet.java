package servlets.wideskills_com_servlet.lesson_10;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SourceServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Welcome Message : Source Servlet");
        req.setAttribute("Request-Attribute", "Value of Attribute ");
        RequestDispatcher rd = req.getRequestDispatcher("/destinationServlet");
        rd.forward(req, resp);
    }
}
