package servlets.wideskills_com_servlet.lesson_14;

import javax.servlet.*;
import java.io.IOException;

public class FilterB implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException
    {
        System.out.println("Filter B initialized...");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException
    {
        System.out.println("Filter B executing Before Servlet Processing ...");
        filterChain.doFilter(request, response);
        System.out.println("Filter B executing after Servlet Processing...");
    }
    @Override
    public void destroy()
    {
        System.out.println("Filter B Destroyed..");
    }
}
