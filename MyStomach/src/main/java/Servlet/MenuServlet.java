/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Entity.Category;
import Entity.Menu;
import Model.Time;
import java.io.IOException;
import java.io.PrintWriter;
import static java.util.Collections.list;
import java.util.Enumeration;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author yunxyinx
 */
public class MenuServlet extends HttpServlet {

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
        Time sa = new Time();
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("TestJpaMenuPU");
        EntityManager em = emf.createEntityManager();
        sa.setTime(request.getParameter("time"));
        request.setAttribute("sa", sa);
        
        String cat = request.getParameter("catagory");
        
        Query category = em.createQuery("SELECT c FROM Category c");
        List<Category> categories = category. getResultList();
        
        request.setAttribute("category", categories);

        if (cat != null) {
            Query food = em.createQuery("SELECT m FROM Menu m WHERE m.categorycategoryID.categoryID = :categoryID");
            food.setParameter("categoryID", Integer.parseInt(cat));
            List<Menu> menus = food.getResultList();
            request.setAttribute("listMenu", menus);
        }

        request.getRequestDispatcher("SetAlarm.jsp").forward(request, response);
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
        processRequest(request, response);
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
