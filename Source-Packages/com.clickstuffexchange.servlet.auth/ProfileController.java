/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.servlet.auth;
import com.clickstuffexchange.module.DatabaseAccess;
import com.clickstuffexchange.servlet.store.StoreController;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
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
public class ProfileController extends HttpServlet {

    private DatabaseAccess da = null;
    public ResultSet rs;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher dispatcher;
        try {
            da = new DatabaseAccess();
            rs = da.getResultSet("SELECT * FROM click_user WHERE user_id='" + "YENLIN" + "'");
            if (!rs.isBeforeFirst()) {
                response.sendRedirect(".");
            } else {
                request.setAttribute("resultSet", rs);

                dispatcher = request.getRequestDispatcher("/WEB-INF/pages/auth/profile.jsp");
                dispatcher.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(StoreController.class.getName()).log(Level.SEVERE, null, ex);
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
        String errorMsg = "";
        try {
            String username = request.getParameter("user_name");
            username = new String(username.getBytes("ISO-8859-1"), "UTF8");
            String userID = request.getParameter("user_id");
            String useremail = request.getParameter("user_email");
            String userContact = request.getParameter("user_contactNum");
            String userage = request.getParameter("user_age");
            String imagebase64=request.getParameter("img_Base64");
            da = new DatabaseAccess();
                //Go to ok page
              
           da.modifyData("update click_user set user_id='"+userID+"', user_name='"+username+"', user_email='"+useremail+"', user_contactNum='"+userContact+"', user_age='"+userage+"'"+
                         ", img_Base64='"+imagebase64 + "'where user_id = '" + "YENLIN'" );
       
           
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/index.jsp");
                dispatcher.forward(request, response);
            
            //RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/index.jsp");
            //dispatcher.forward(request, response);
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        } 
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
