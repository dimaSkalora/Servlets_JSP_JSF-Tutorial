package servlets.wideskills_com_servlet.lesson_14;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Locale;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class RequestInterceptorFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("RequestInterceptorFilter  initialized...");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        String name = request.getParameter("name");
        if(name==null || name.equals(""))
        {
            PrintWriter writer = response.getWriter();
            String message="Name can not be blank.";
            writer.println(message);
            return;
        }
        filterChain.doFilter(request, response);
    }
    @Override
    public void destroy() {
        System.out.println("RequestInterceptorFilter  Destroyed..");
    }
}
