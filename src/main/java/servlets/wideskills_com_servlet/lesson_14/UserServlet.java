package servlets.wideskills_com_servlet.lesson_14;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class UserServlet extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String username=request.getParameter("userName");
        String password=request.getParameter("password");
// if user name is admin and password is password, we will send dummy data else no data
        if(username.equals("admin") && password.equals("password") )
        {
            String name="Admin Name";
            String address="Admin Address";
            // Add these information in request
            request.setAttribute("name", name);
            request.setAttribute("address", address);
            request.setAttribute("message", "Your personal details are -");
        }
        else
        {
            request.setAttribute("message", "No data found for given username and password ");
        }
        // Forward to home.jsp
        RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
        rd.forward(request, response);
    }
}

