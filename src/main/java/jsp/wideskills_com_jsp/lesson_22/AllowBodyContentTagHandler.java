package jsp.wideskills_com_jsp.lesson_22;

import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
public class AllowBodyContentTagHandler extends SimpleTagSupport{
    @Override
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        JspFragment body = getJspBody();
        StringWriter writer = new StringWriter();
        body.invoke(writer);
        out.println("Hello!! Body of Tag is :: " + writer.toString());
    }
}
