package servlets.wideskills_com_servlet.lesson_18;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
@WebFilter(
        filterName="MyFilter",
        urlPatterns="/welcomeServlet_WebServlet",
        description="Filter description",
        initParams={
                @WebInitParam(name="param1",value="value 1",description=" param 1 description "),
                @WebInitParam(name="param2", value="value 2", description=" param 2 description ")
        })
public class MyFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("Filter initialized...");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain filterChain) throws IOException, ServletException {
        System.out.println("Filter executing...");
        filterChain.doFilter(request, response);
    }
    @Override
    public void destroy() {
        System.out.println("Filter Destroyed..");
    }
}
