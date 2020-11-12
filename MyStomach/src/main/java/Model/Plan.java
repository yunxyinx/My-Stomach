/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Entity.Menu;

/**
 *
 * @author yunxyinx
 */
public class Plan {
    String meal;
    Menu menu;
    String time;

    public Plan(String meal, Menu menu, String time) {
        this.meal = meal;
        this.menu = menu;
        this.time = time;
    }

    public Plan() {
    }

    public String getMeal() {
        return meal;
    }

    public void setMeal(String meal) {
        this.meal = meal;
    }

    public Menu getMenu() {
        return menu;
    }

    public void setMenu(Menu menu) {
        this.menu = menu;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Meal{" + "meal=" + meal + ", menu=" + menu + ", time=" + time + '}';
    }
}
