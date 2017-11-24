package servlets.wideskills_com_servlet.lesson_16;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class GetRoomsByResidenceServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String residenceCode = req.getParameter("Residence");
        // invoke Business logic
        List<Room> availableRooms = GetAvailableRoomsByResidence.getAvailableRoomsByResidence(residenceCode);
        // store the result in requst
        req.setAttribute("availableRooms", availableRooms);
        if(availableRooms.size() > 0){
            RequestDispatcher rd = req.getRequestDispatcher("displayRooms.jsp");
            rd.forward(req,resp);
        }else {
            RequestDispatcher rd = req.getRequestDispatcher("noRooms.jsp");
            rd.forward(req,resp);
        }
    }
}
