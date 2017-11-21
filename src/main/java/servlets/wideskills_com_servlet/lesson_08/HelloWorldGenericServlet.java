package servlets.wideskills_com_servlet.lesson_08;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class HelloWorldGenericServlet extends GenericServlet{

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        servletResponse.setContentType("txt/html");
        PrintWriter writer = servletResponse.getWriter();
        String helloWorldMessage ="<html><body><H1>Hello World Servlet With extends Generic Servlet</H1></body></html>";
        writer.println(helloWorldMessage);
    }
}
