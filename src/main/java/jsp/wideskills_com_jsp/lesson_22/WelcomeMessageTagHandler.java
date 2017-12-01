package jsp.wideskills_com_jsp.lesson_22;

import java.io.IOException;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class WelcomeMessageTagHandler extends SimpleTagSupport{
    @Override
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        out.println("Hello!! This is the message from Custom Tag .");
    }
}
