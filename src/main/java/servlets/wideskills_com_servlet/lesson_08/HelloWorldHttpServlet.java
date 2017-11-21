package servlets.wideskills_com_servlet.lesson_08;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloWorldHttpServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("txt/html");
        PrintWriter writer = response.getWriter();
        String helloWorldMessage ="<html><body><H1>Hello World Servlet With extends Generic Servlet</H1></body></html>";
        writer.println(helloWorldMessage);
    }
}
