/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.servlet.auth;

import com.clickstuffexchange.module.DatabaseAccess;
import java.io.IOException;
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
public class LoginController extends HttpServlet {

    private DatabaseAccess da = null;
    public ResultSet rs_count, rs_check;

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
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/auth/login.jsp");
        dispatcher.forward(request, response);
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
        try {
            String username = request.getParameter("username");
            //String email = request.getParameter("email");
            da = new DatabaseAccess();
            rs_count = da.getResultSet("SELECT COUNT(*) FROM click_user WHERE user_id = '" + username + "'");

            int count = 0;
            while (rs_count.next()) {
                count = rs_count.getInt(1);
                break;
            }

            if (count == 1) {
                rs_check = da.getResultSet("SELECT user_id,user_password FROM click_user WHERE user_id = '" + username + "'");

                MessageDigest md = MessageDigest.getInstance("SHA-256");
                String password = request.getParameter("password");
                String wait2hash = username + "_" + password;
                md.update(wait2hash.getBytes("UTF-8"));
                byte[] digest = md.digest();

                String hashedPassword = String.format("%064x", new java.math.BigInteger(1, digest));
                String serverHash = "";
                while (rs_check.next()) {
                    serverHash = rs_check.getString("user_password");
                    break;
                }
                if (hashedPassword.equals(serverHash)) {
                    Cookie c_user = new Cookie("username", username);
                    Cookie c_character = new Cookie("character", "normal_user");
                    c_user.setMaxAge(7 * 24 * 60 * 60);
                    c_character.setMaxAge(7 * 24 * 60 * 60);
                    c_user.setPath("/");
                    c_character.setPath("/");
                    response.addCookie(c_user);
                    response.addCookie(c_character);
                    response.sendRedirect("..");
                    //Go to ok page
                } else {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/auth/error.jsp");
                    dispatcher.forward(request, response);
                }
            } else {
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/auth/error.jsp");
                dispatcher.forward(request, response);
            }

            //RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/index.jsp");
            //dispatcher.forward(request, response);
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
