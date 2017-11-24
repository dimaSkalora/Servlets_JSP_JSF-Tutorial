package servlets.wideskills_com_servlet.lesson_14;

import javax.servlet.*;
import java.io.IOException;

public class FilterA implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {
        System.out.println("Filter A initialized...");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException
    {
        System.out.println("Filter A executing Before Servlet Processing ...");
        filterChain.doFilter(request, response);
        System.out.println("Filter A executing after Servlet Processing...");
    }
    @Override
    public void destroy() {
        System.out.println("Filter A Destroyed..");
    }
}
