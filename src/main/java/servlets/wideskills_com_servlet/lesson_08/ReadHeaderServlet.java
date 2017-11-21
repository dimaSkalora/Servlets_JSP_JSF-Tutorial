package servlets.wideskills_com_servlet.lesson_08;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

public class ReadHeaderServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Enumeration<String> headerEnumeration = req.getHeaderNames();
        StringBuffer buffer = new StringBuffer();

        while(headerEnumeration.hasMoreElements()){
            String headerName = headerEnumeration.nextElement();
            String headerValue = req.getHeader(headerName);
            buffer.append(headerName+" : "+headerValue);
            buffer.append("<br/>");
        }
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.println(buffer.toString());
    }
}
