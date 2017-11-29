package jsp.wideskills_com_jsp.lesson_15;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
/**
 * Servlet Filter implementation class SampleFilter
 */
public class SampleFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {
        System.out.println("Filter initialized...(SampleFilter)");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        System.out.println("Filter executing...(SampleFilter)");
        filterChain.doFilter(request, response);
    }
    @Override
    public void destroy()
    {
        System.out.println("Filter Destroyed...(SampleFilter)");
    }
}
