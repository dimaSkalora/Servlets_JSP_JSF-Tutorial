package servlets.wideskills_com_servlet.lesson_10;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DestinationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Welcome Message : Destination Servlet");
        Object attributeValue = req.getAttribute("Request-Attribute");
        System.out.println("Value of Request-Attribute is : " + attributeValue);
    }
}
