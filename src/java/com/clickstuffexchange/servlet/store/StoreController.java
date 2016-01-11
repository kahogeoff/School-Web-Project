/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.servlet.store;

import com.clickstuffexchange.module.DatabaseAccess;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Geoffrey
 */
public class StoreController extends HttpServlet {

    private DatabaseAccess da = null;
    public ResultSet rs;

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
        RequestDispatcher dispatcher;
        if (request.getPathInfo() == null || request.getPathInfo().equals("/index.jsp") || request.getPathInfo().equals("/")) {
            try {
                da = new DatabaseAccess();
                rs = da.getResultSet("SELECT item_id,item_name,item_duration,item_picture,user_id FROM click_item");
                request.setAttribute("resultSet", rs);
                
                request.setAttribute("withFilter", false);
                
                dispatcher = request.getRequestDispatcher("/WEB-INF/pages/store/index.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(StoreController.class.getName()).log(Level.SEVERE, null, ex);
            }
        } else if(!request.getPathInfo().contains("/detail.jsp") || !request.getPathInfo().contains("/postitem.jsp")){
            try {
                da = new DatabaseAccess();
                rs = da.getResultSet("SELECT item_id,item_name,item_duration,item_picture,user_id FROM click_item WHERE item_type='"+request.getPathInfo().substring(1)+"'");
                request.setAttribute("resultSet", rs);
                request.setAttribute("withFilter", true);
                
                dispatcher = request.getRequestDispatcher("/WEB-INF/pages/store/index.jsp");
                dispatcher.forward(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(StoreController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
