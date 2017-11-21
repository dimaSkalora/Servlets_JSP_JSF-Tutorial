package servlets.wideskills_com_servlet.lesson_11;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        String uName = req.getParameter("userName");
        String password = req.getParameter("password");
        HttpSession session = req.getSession();
        session.setAttribute("userName",uName);

        PrintWriter writer = resp.getWriter();
        String message="Username is : "+ uName + "<br/> Password is :" + password ;
        message = message + " <br/>To logout click on Logout Link <br/>" ;
        message = message + "<a href=\"logoutServlet\"> Logout</a>";
        writer.println(message);
    }
}
