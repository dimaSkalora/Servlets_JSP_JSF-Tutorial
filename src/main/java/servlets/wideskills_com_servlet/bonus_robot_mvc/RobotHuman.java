package servlets.wideskills_com_servlet.bonus_robot_mvc;

public class RobotHuman {
    private String modelName;
    private String weapon;
    private int power;

    public RobotHuman() {
    }

    public RobotHuman(String modelName, String weapon, int power) {
        this.modelName = modelName;
        this.weapon = weapon;
        this.power = power;
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

    public int getPower() {
        return power;
    }

    public void setPower(int power) {
        this.power = power;
    }
}
