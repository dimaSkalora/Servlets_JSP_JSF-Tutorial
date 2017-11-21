package servlets.wideskills_com_servlet.lesson_11;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class SessionCounterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get session object
        HttpSession session = req.getSession();
        String user_Name =req.getParameter("userName");
        Integer counter = (Integer)session.getAttribute("counter");
        if(counter == null){
            counter=1;
            session.setAttribute("counter",counter);
        }else
            session.setAttribute("counter",counter+1);
        StringBuffer buffer = new StringBuffer();
        buffer.append(" <HTML> <HEAD> </HEAD> <BODY>");
        buffer.append("<STRONG> User name  : </STRONG>" + user_Name);
        buffer.append(" <BR/> ");
        buffer.append("<STRONG> Counter </STRONG>: " + counter);
        buffer.append(" <BR/> ");
        buffer.append(" </BODY> </HTML> ");
        PrintWriter writer = resp.getWriter();
        writer.print( buffer.toString() );


    }
}
