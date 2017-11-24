package servlets.wideskills_com_servlet.lesson_14;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class DisplayInitParamFilter implements Filter {
    private FilterConfig filterConfig=null;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("DisplayInitParamFilter  initialized...");
        this.filterConfig = filterConfig;
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        Enumeration<String> initParams= filterConfig.getInitParameterNames();
        StringBuffer buffer = new StringBuffer();
        while(initParams.hasMoreElements())
        {
            String initParamName = initParams.nextElement();
            String initParamValue =filterConfig.getInitParameter(initParamName);
            buffer.append(initParamName+"::" + initParamValue);
        }
        PrintWriter writer = response.getWriter();
        writer.println(buffer.toString());
    }
    @Override
    public void destroy() {
        System.out.println("DisplayInitParamFilter  Destroyed..");
    }
}
