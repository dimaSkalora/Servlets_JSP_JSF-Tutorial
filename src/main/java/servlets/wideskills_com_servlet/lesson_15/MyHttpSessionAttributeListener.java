package servlets.wideskills_com_servlet.lesson_15;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
public class MyHttpSessionAttributeListener  implements HttpSessionAttributeListener {
    /**
     * Default constructor.
     */
    public MyHttpSessionAttributeListener()
    {
    }
    @Override
    public void attributeAdded(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("Attribute has been added");
        String attributeName = httpSessionBindingEvent.getName();
        Object attributeValue = httpSessionBindingEvent.getValue();
        System.out.println("Attribute Name ::" + attributeName);
        System.out.println("Attribute Value ::" + attributeValue.toString());
    }
    @Override
    public void attributeRemoved(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("Attribute has been removed");
        String attributeName = httpSessionBindingEvent.getName();
        Object attributeValue = httpSessionBindingEvent.getValue();
        System.out.println("Attribute Name ::" + attributeName);
        System.out.println("Attribute Value ::" + attributeValue.toString());
    }
    @Override
    public void attributeReplaced(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("Attribute has been replaced");
        String attributeName = httpSessionBindingEvent.getName();
        Object attributeValue = httpSessionBindingEvent.getValue();
        System.out.println("Attribute Name ::" + attributeName);
        System.out.println("Attribute Value ::" + attributeValue.toString());
    }
}
