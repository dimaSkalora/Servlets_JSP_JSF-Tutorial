package servlets.wideskills_com_servlet.lesson_09;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

public class ReadAllRequestParametersServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Enumeration<String> paramEnumeration = req.getParameterNames();
        StringBuffer buffer = new StringBuffer();

        while(paramEnumeration.hasMoreElements()){
            String paramName = paramEnumeration.nextElement();
            String paramValue = req.getParameter(paramName);
            buffer.append(paramName+" : "+paramValue);
            buffer.append("<br/>");
        }

        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.println(buffer.toString());
    }
}
