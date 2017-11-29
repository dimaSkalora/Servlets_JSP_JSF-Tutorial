package jsp.wideskills_com_jsp.lesson_15;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class FilterA implements Filter
{
    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {
        System.out.println("Filter A initialized...(FilterA)");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException
    {
        System.out.println("Filter A executing Before JSP Processing ...(FilterA)");
        filterChain.doFilter(request, response);
        System.out.println("Filter A executing after JSP Processing...(FilterA)");
    }
    @Override
    public void destroy() {
        System.out.println("Filter A Destroyed...(FilterA)");
    }
}

