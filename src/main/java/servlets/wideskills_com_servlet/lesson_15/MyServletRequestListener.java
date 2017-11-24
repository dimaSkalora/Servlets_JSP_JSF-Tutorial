package servlets.wideskills_com_servlet.lesson_15;

import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
public class MyServletRequestListener  implements ServletRequestListener {
    /**
     * Default constructor.
     */
    public MyServletRequestListener() {
    }
    public void requestDestroyed(ServletRequestEvent servletRequestEvent)
    {
        ServletRequest request = servletRequestEvent.getServletRequest();
        System.out.println("Request Destroyed");
    }
    public void requestInitialized(ServletRequestEvent servletRequestEvent)
    {
        ServletRequest request = servletRequestEvent.getServletRequest();
        System.out.println("Request initialized");
    }
}