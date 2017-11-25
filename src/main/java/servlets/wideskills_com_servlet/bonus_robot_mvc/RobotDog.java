package servlets.wideskills_com_servlet.bonus_robot_mvc;

public class RobotDog {
    private String modelName;
    private String weapon;
    private int height;

    public RobotDog() {
    }

    public RobotDog(String modelName, String weapon, int height) {
        this.modelName = modelName;
        this.weapon = weapon;
        this.height = height;
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

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }
}
