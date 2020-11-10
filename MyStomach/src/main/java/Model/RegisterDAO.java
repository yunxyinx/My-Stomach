/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author graciedaily
 */
public class RegisterDAO {

    public String registerUser(Users registerUser) {
        
        String userName = registerUser.getUsername();
        String password = registerUser.getPassword();
        String firstName = registerUser.getFname();
        String lastName = registerUser.getLname();
        String email = registerUser.getEmail();
        int h = registerUser.getHeight();
        int w = registerUser.getWeight();

        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = ConnectDB.getInstance();
            String query = "insert into Users(Username,Password,Fname,Lname,Email,Height,Weight) values (?,?,?,?,?,?,?)"; //Insert user details into the table 'USERS'
            preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
            preparedStatement.setString(1, userName);
            preparedStatement.setString(2, password);
            preparedStatement.setString(3, firstName);
            preparedStatement.setString(4, lastName);
            preparedStatement.setString(5, email);
            preparedStatement.setInt(6, h);
            preparedStatement.setInt(7, w);

            int i = preparedStatement.executeUpdate();

            if (i != 0) //Just to ensure data has been inserted into the database
            {
                return "SUCCESS";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "เอ้ะ กรุณากรอกข้อมูลให้ถูกต้องด้วยครับ/ค่ะ";
    }
    
    
    public String EditUser(Users registerUser) {
             String userName = registerUser.getUsername();
        String password = registerUser.getPassword();
        String firstName = registerUser.getFname();
        String lastName = registerUser.getLname();
        String email = registerUser.getEmail();
        int h = registerUser.getHeight();
        int w = registerUser.getWeight();
 int profile=registerUser.getProfile();
        Connection con = null;
        PreparedStatement preparedStatement = null;
        try {
            con = ConnectDB.getInstance();
            String query = "Update Users Set fname=?,lname=?,height=?,weight=?,profile=? WHERE username=? "; //Insert user details into the table 'USERS'
          preparedStatement=  con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
         
            System.out.println("1");
            System.out.println(userName);
            System.out.println(firstName);
            preparedStatement.setString(1, firstName);
            
            preparedStatement.setString(2, lastName);
            preparedStatement.setInt(3, h);
            preparedStatement.setInt(4,w);
            preparedStatement.setInt(5,profile);
            preparedStatement.setString(6,userName);
      
            preparedStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "เอ้ะ กรุณากรอกข้อมูลให้ถูกต้องด้วยครับ/ค่ะ";
    }
    
}
