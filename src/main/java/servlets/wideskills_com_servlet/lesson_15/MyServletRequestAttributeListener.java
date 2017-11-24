package servlets.wideskills_com_servlet.lesson_15;

import javax.servlet.ServletContext;
import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.annotation.WebListener;
public class MyServletRequestAttributeListener  implements ServletRequestAttributeListener {
    /**
     * Default constructor.
     */
    public MyServletRequestAttributeListener() {
    }
    public void attributeAdded(ServletRequestAttributeEvent servletRequestAttributeEvent) {
        System.out.println("Attribute has been added");
        String attributeName = servletRequestAttributeEvent.getName();
        Object attributeValue = servletRequestAttributeEvent.getValue();
        System.out.println("Attribute Name ::" + attributeName);
        System.out.println("Attribute Value ::" + attributeValue.toString());
    }
    public void attributeRemoved(ServletRequestAttributeEvent servletRequestAttributeEvent) {
        System.out.println("Attribute has been added");
        String attributeName = servletRequestAttributeEvent.getName();
        Object attributeValue = servletRequestAttributeEvent.getValue();
        System.out.println("Attribute Name ::" + attributeName);
        System.out.println("Attribute Value ::" + attributeValue.toString());
    }
    public void attributeReplaced(ServletRequestAttributeEvent servletRequestAttributeEvent) {
        System.out.println("Attribute has been added");
        String attributeName = servletRequestAttributeEvent.getName();
        Object attributeValue = servletRequestAttributeEvent.getValue();
        System.out.println("Attribute Name ::" + attributeName);
        System.out.println("Attribute Value ::" + attributeValue.toString());
    }
}
