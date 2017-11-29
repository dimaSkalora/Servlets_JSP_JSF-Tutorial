package jsp.wideskills_com_jsp.lesson_15;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
public class RequestInterceptorFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter  initialized...RequestInterceptorFilter");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        String name = request.getParameter("name");
        if(name==null || name.equals(""))
        {
            PrintWriter writer = response.getWriter();
            String message="Name cannot be blank.( This is the response from Protected Servlet )RequestInterceptorFilter";
            writer.println(message);
            return;
        }
        filterChain.doFilter(request, response);
    }
    @Override
    public void destroy() {
        System.out.println("Filter  Destroyed...RequestInterceptorFilter");
    }
}
