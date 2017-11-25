package servlets.wideskills_com_servlet.bonus_robot_mvc;

public class RobotCar {
    private String modelName;
    private String weapon;
    private int speed;

    public RobotCar() {
    }

    public RobotCar(String modelName, String weapon, int speed) {
        this.modelName = modelName;
        this.weapon = weapon;
        this.speed = speed;
    }

    public String getModelName() {
        return modelName;
    }

    public void setModelName(String modelName) {
        this.modelName = modelName;
    }

    public String getWeapon() {
        return weapon;
    }

    public void setWeapon(String weapon) {
        this.weapon = weapon;
    }

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }
}
