package servlets.wideskills_com_servlet.lesson_15;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class HttpSessionBindingListenerDemo extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        Person p = new Person();
        p.setId(100500);
        p.setName("Niki");
        HttpSession session = request.getSession();
        session.setAttribute("person",p);
        session.removeAttribute("person");
    }
}
