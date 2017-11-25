package servlets.wideskills_com_servlet.bonus_robot_mvc;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class RobotServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String robotParameter = req.getParameter("Robot");
        List<RobotCar> availableRobotCars = null;
        List<RobotDog> availableRobotDogs = null;
        List<RobotHuman> availableRobotHumans = null;

        switch (robotParameter){
            case "Robot Car":{
                    availableRobotCars = GetAvailableRobot.getRobotCarList();
                    req.setAttribute("availableRobotCars", availableRobotCars);
                    RequestDispatcher rd = req.getRequestDispatcher("robotCar.jsp");
                    rd.forward(req,resp);
                }
                break;
            case "Robot Dog":{
                    availableRobotDogs = GetAvailableRobot.getRobotDogList();
                    req.setAttribute("availableRobotDogs", availableRobotDogs);
                    RequestDispatcher rd = req.getRequestDispatcher("robotDog.jsp");
                    rd.forward(req,resp);
                }
                break;
            case "Robot Human": {
                    availableRobotHumans = GetAvailableRobot.getRobotHumanList();
                    req.setAttribute("availableRobotHumans", availableRobotHumans);
                    RequestDispatcher rd = req.getRequestDispatcher("robotHuman.jsp");
                    rd.forward(req,resp);
                }
                break;
            case "No Robot":{
                    RequestDispatcher rd = req.getRequestDispatcher("noRobot.jsp");
                    rd.forward(req,resp);
                }
                break;
        }







    }
}
