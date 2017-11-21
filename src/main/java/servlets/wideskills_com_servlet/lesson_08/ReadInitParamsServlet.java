package servlets.wideskills_com_servlet.lesson_08;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ReadInitParamsServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String initParam = getServletConfig().getInitParameter("MyInitParam");
        String contextParam = getServletContext().getInitParameter("MyContextParam");
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        String message="Init parameter value : " + initParam + "<br/> Context Param : " + contextParam;
        writer.println(message);
    }
}
