/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.servlet.store;

import com.clickstuffexchange.module.DatabaseAccess;
import java.io.IOException;
import java.io.PrintWriter;
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
public class DetailController extends HttpServlet {

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
        if (request.getParameter("id") == null) {
            response.sendRedirect(".");
        } else{
            try {
                da = new DatabaseAccess();
                rs = da.getResultSet("SELECT click_item.*, click_exchange_list.area, click_user.user_name, click_user.user_email, click_user.user_contactNum " +
                            "FROM click_item " +
                            "JOIN click_exchange_list " +
                            "ON click_item.item_id = click_exchange_list.item_id " +
                            "JOIN click_user " +
                            "ON click_user.user_id = click_item.user_id "
                        + "WHERE click_item.item_id='"+request.getParameter("id")+"'");
                if(!rs.isBeforeFirst() || rs.wasNull())
                {
                    response.sendRedirect(".");
                }else{
                    request.setAttribute("resultSet", rs);

                    dispatcher = request.getRequestDispatcher("/WEB-INF/pages/store/detail.jsp");
                    dispatcher.forward(request, response);
                }
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
