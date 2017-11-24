package servlets.wideskills_com_servlet.lesson_15;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class HttpSessionAttributeListenerDemo extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        HttpSession session = request.getSession();
        String attributeName="SessionAttribute";
        String attributeValue="Initial Value";
        session.setAttribute(attributeName, attributeValue);
        attributeValue="New Value";
        session.setAttribute(attributeName, attributeValue);
        session.removeAttribute(attributeName);
    }
}
