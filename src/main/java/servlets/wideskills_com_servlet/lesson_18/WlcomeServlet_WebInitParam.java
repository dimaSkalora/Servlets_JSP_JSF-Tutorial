package servlets.wideskills_com_servlet.lesson_18;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="/WlcomeServlet_WebInitParam",urlPatterns="/welcomeServlet_WebInitParam",loadOnStartup=1,
 description="Welcome Servlet", initParams={@WebInitParam(name="Param1",value="Param 1 Value",description="param1"),
        @WebInitParam(name="Param2",value="Param 2 Value",description="param 2")})
public class WlcomeServlet_WebInitParam  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");

        String initParam1 = getServletConfig().getInitParameter("Param1");
        String initParam2 = getServletConfig().getInitParameter("Param2");

        PrintWriter writer = resp.getWriter();
        String str = "Hello WebInitParam";
        writer.println(str+"<br>");
        writer.println(initParam1+"<br>");
        writer.println(initParam2+"<br>");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
