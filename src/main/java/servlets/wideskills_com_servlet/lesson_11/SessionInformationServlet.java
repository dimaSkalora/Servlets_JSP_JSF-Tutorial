package servlets.wideskills_com_servlet.lesson_11;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class SessionInformationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // get session object
        HttpSession session = req.getSession();
        long creationTime = session.getCreationTime();
        String sessionId = session.getId();
        long lastAccessedTime = session.getLastAccessedTime();
        Date createDate= new Date(creationTime);
        Date lastAccessedDate= new Date(lastAccessedTime);
        StringBuffer buffer = new StringBuffer();
        buffer.append(" <HTML> <HEAD> </HEAD> <BODY>");
        buffer.append("<STRONG> Session ID : </STRONG>" + sessionId);
        buffer.append(" <BR/> ");
        buffer.append("<STRONG> Session Creation Time </STRONG>: " + createDate);
        buffer.append(" <BR/> ");
        buffer.append("<STRONG> Last Accessed Time : </STRONG>" + lastAccessedDate);
        buffer.append(" <BR/> ");
        buffer.append(" </BODY> </HTML> ");
        PrintWriter writer = resp.getWriter();
        writer.print( buffer.toString() );
    }
}
