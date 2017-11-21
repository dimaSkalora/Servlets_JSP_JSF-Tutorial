package servlets.wideskills_com_servlet.lesson_09;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class ReadMultipleValuesServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String message="";
        String[] values = req.getParameterValues("CheckBoxGrp");
        if(values != null)
            for(int i=0; i<values.length; i++)
                message=message+"<BR/>"+values[i];
        resp.setContentType("text/html");
        PrintWriter writer = resp.getWriter();
        writer.println(message);
    }
}
