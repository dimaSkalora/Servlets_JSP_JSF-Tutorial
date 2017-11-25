package servlets.wideskills_com_servlet.lesson_19;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
@WebListener
public class TestServletContextListener  implements ServletContextListener {
    /**
     * Default constructor.
     */
    public TestServletContextListener() {
    }
    public void contextInitialized(ServletContextEvent servletContextEvent)
    {
        System.out.println("Context Initialized.. Called from Test Web Fragment");
    }
    public void contextDestroyed(ServletContextEvent servletContextEvent)
    {
        System.out.println("Context Destroyed.. Called from Test Web Fragment");
    }
}
