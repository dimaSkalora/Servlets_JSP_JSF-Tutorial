package servlets.wideskills_com_servlet.lesson_15;

import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionBindingListener;
public class Person implements HttpSessionBindingListener{
    private int id;
    private String name;
    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    @Override
    public void valueBound(HttpSessionBindingEvent httpSessionBindingEvent) {
        System.out.println("I am added to session !!");
    }
    @Override
    public void valueUnbound(HttpSessionBindingEvent HttpSessionBindingEvent) {
        System.out.println("I am removed  to session !!");
    }

    @Override
    public String toString() {
        return "Person{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
