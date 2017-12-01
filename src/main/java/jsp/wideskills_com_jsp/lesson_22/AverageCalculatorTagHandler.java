package jsp.wideskills_com_jsp.lesson_22;

import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.jsp.JspContext;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.JspFragment;
import javax.servlet.jsp.tagext.SimpleTagSupport;
public class AverageCalculatorTagHandler extends SimpleTagSupport{
    private int input1;
    private int input2;
    public int getInput1() {
        return input1;
    }
    public void setInput1(int input1) {
        this.input1 = input1;
    }
    public int getInput2() {
        return input2;
    }
    public void setInput2(int input2) {
        this.input2 = input2;
    }
    @Override
    public void doTag() throws JspException, IOException {
        JspContext context = getJspContext();
        JspWriter out = context.getOut();
        double result = (input1+input2)/2 ;
        out.println("Average is  :: " + result);
    }
}
