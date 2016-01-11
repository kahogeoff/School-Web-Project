/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.servlet.auth;

import com.clickstuffexchange.module.CookieControl;
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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Geoffrey
 */
public class ProfilePwdController extends HttpServlet {

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

        Cookie[] cookies = request.getCookies();
        CookieControl cc = new CookieControl(cookies);
        String user_id = cc.getValue("username");

        try {

            da = new DatabaseAccess();

            MessageDigest md = MessageDigest.getInstance("SHA-256");
            MessageDigest md2 = MessageDigest.getInstance("SHA-256");

            String password = request.getParameter("old_password");
            String newpassword = request.getParameter("new_password");

            String wait2hash = user_id + "_" + password;
            md.update(wait2hash.getBytes("UTF-8"));
            byte[] digest = md.digest();
            String matchpwdhash = String.format("%064x", new java.math.BigInteger(1, digest));

            String wait2hash2 = user_id + "_" + newpassword;
            md2.update(wait2hash2.getBytes("UTF-8"));
            byte[] digest2 = md2.digest();
            String matchpwdhash2 = String.format("%064x", new java.math.BigInteger(1, digest2));

            da.modifyData("UPDATE click_user set user_password='" + matchpwdhash2 + "'" + " WHERE user_password = '" + matchpwdhash + "' AND user_id = '" + user_id + "'");

            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/index.jsp");
            dispatcher.forward(request, response);

        } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NoSuchAlgorithmException ex) {
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
