/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.servlet.auth;

import com.clickstuffexchange.module.DatabaseAccess;
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
public class RegisterController extends HttpServlet {
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/auth/register.jsp");
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
        String errorMsg = "";
        try {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            da = new DatabaseAccess();
            rs = da.getResultSet("SELECT COUNT(*) FROM click_user WHERE user_id = '"+username+"' OR user_email = '"+email+"'");
            
            int count = 0;
            while (rs.next()) {
                count = rs.getInt(1);
                break;
            }
            
            if(count > 0)
            {
                //Go to error page
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/auth/error.jsp");
                dispatcher.forward(request, response);
            }else{
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                String password = request.getParameter("password");
                String wait2hash = username+"_"+password;
                md.update(wait2hash.getBytes("UTF-8"));
                byte[] digest = md.digest();
                //Go to ok page
                da.modifyData("INSERT INTO click_user (user_id,user_password,user_name,user_email,user_contactNum,user_age) VALUES "
                        + "('"+username+"','"+String.format("%064x", new java.math.BigInteger(1, digest))+"','無名氏','"+email+"','00000000',0)");
                RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/auth/login.jsp");
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
