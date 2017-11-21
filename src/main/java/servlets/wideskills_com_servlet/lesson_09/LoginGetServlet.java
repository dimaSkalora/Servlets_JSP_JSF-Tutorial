package servlets.wideskills_com_servlet.lesson_09;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginGetServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        PrintWriter writer = resp.getWriter();
        String message = "UserName is: "+userName+"<br/> Password is: "+password;
        writer.println(message);
    }
}
