/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.RegisterDAO;
import Model.Users;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author graciedaily
 */
public class EditProfileServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String fname = request.getParameter("Fname");
        String lname = request.getParameter("Lname");
        int profile = Integer.parseInt(request.getParameter("profile"));
        int height = Integer.parseInt(request.getParameter("Height"));
        int weight = Integer.parseInt(request.getParameter("Weight"));
        Users registerUser = new Users();
        //Using Java Beans - An easiest way to play with group of related data
        HttpSession s1 = request.getSession();
        registerUser.setFname(fname);
        registerUser.setLname(lname);
        registerUser.setProfile(profile);
        String user = (String) s1.getAttribute("Username");
        registerUser.setUsername(user);
        registerUser.setHeight(height);
        registerUser.setWeight(weight);

        RegisterDAO registerDao = new RegisterDAO();

        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = registerDao.EditUser(registerUser);

        System.out.println(fname);
        System.out.println(lname);
        System.out.println(profile);
        System.out.println(height);
        System.out.println(weight);
        System.out.println(user);

        s1.setAttribute("User", registerUser);

        request.getRequestDispatcher("/Index.jsp").forward(request, response);

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getServletContext().getRequestDispatcher("/EditProfile.jsp").forward(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
