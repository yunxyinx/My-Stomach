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
public class SetAlarm {
    private String Time;
    private String foods;

    public SetAlarm() {
    }

    public SetAlarm(String Time, String foods) {
        this.Time = Time;
        this.foods = foods;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String Time) {
        this.Time = Time;
    }

    public String getFoods() {
        return foods;
    }

    public void setFoods(String foods) {
        this.foods = foods;
    }

    
    
    
}
