package servlets.wideskills_com_servlet.lesson_15;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class ServletRequestAttributeListenerDemo extends HttpServlet {
    @Override
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String attributeName="RequestAttribute";
        String attributeValue="Initial Value";
        request.setAttribute(attributeName, attributeValue);
        attributeValue="New Value";
        request.setAttribute(attributeName, attributeValue);
        request.removeAttribute(attributeName);
    }
}
