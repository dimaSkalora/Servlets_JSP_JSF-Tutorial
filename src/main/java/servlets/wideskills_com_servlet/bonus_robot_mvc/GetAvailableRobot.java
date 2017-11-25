package servlets.wideskills_com_servlet.bonus_robot_mvc;

import java.util.ArrayList;
import java.util.List;

public class GetAvailableRobot {
    public static List<RobotCar> getRobotCarList(){
        List<RobotCar> robotCars = new ArrayList<>();
        RobotCar robotCar1 = new RobotCar("Car1","Pistol",120);
        RobotCar robotCar2 = new RobotCar("Car2","Pistol",150);
        RobotCar robotCar3 = new RobotCar("Car3","automatic",250);
        robotCars.add(robotCar1);
        robotCars.add(robotCar2);
        robotCars.add(robotCar3);

        return robotCars;
    }

    public static List<RobotDog> getRobotDogList(){
        List<RobotDog> robotDogs = new ArrayList<>();
        robotDogs.add(new RobotDog("Dog1","automatic",100));
        robotDogs.add(new RobotDog("Dog2","clutches",110));
        robotDogs.add(new RobotDog("Dog3","canine",90));

        return robotDogs;
    }

    public static List<RobotHuman> getRobotHumanList(){
        List<RobotHuman> robotHumans = new ArrayList<>();
        robotHumans.add(new RobotHuman("Human1","automatic",110));
        robotHumans.add(new RobotHuman("Human2","Pistol",80));
        robotHumans.add(new RobotHuman("Human3","automatic",50));

        return robotHumans;
    }

}
