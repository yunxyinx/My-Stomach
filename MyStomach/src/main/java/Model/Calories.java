/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author yunxyinx
 */
public class Calories {
    private int meal;
    private int day;
    String operator;


    public Calories() {
    }

    public int getMeal() {
        return meal;
    }

    public void setMeal(int meal) {
        this.meal = meal;
    }

    public int getDay() {
        return day;
    }

    public void setDay(int day) {
        this.day = day;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = "+";
    }
    
    
}
