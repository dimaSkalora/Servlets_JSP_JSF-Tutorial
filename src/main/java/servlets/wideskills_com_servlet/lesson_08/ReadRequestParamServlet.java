package servlets.wideskills_com_servlet.lesson_08;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ReadRequestParamServlet extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String requestParam = request.getParameter("MyRequestParam");
        response.setContentType("text/html");
        PrintWriter writer = response.getWriter();
        String message="<html><body><H1>"+requestParam+"</H1></body></html>";
        writer.println(message);
    }
}
