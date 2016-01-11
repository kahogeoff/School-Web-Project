/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.clickstuffexchange.servlet.store;

import com.clickstuffexchange.module.CookieControl;
import com.clickstuffexchange.module.DatabaseAccess;
import com.clickstuffexchange.servlet.auth.RegisterController;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.zip.CRC32;
import java.util.zip.Checksum;
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
public class PostItemController extends HttpServlet {

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

        Cookie[] cookies = request.getCookies();
        CookieControl cc = new CookieControl(cookies);
        String post_user = cc.getValue("username");
        try {
            da = new DatabaseAccess();
            rs = da.getResultSet("SELECT user_id,user_name,user_email,user_contactNum FROM click_user WHERE user_id='" + post_user + "'");

            request.setAttribute("resultSet", rs);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/pages/store/postitem.jsp");
            dispatcher.forward(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(PostItemController.class.getName()).log(Level.SEVERE, null, ex);
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
            Cookie[] cookies = request.getCookies();
            CookieControl cc = new CookieControl(cookies);
            String user_id = cc.getValue("username");
            String item_name = request.getParameter("name");
            String item_type = request.getParameter("type");
            String item_city = request.getParameter("city");
            String item_duration = request.getParameter("duration");
            String item_describe = request.getParameter("describe");
            String item_img = request.getParameter("img_Base64");

            char[] chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".toCharArray();
            StringBuilder sb = new StringBuilder();
            Random random = new Random();
            for (int i = 0; i < 20; i++) {
                char c = chars[random.nextInt(chars.length)];
                sb.append(c);
            }

            String wait2hash = item_name + "_" + user_id + "_" + sb.toString();;
            byte bytes[] = wait2hash.getBytes();
            Checksum checksum = new CRC32();
            checksum.update(bytes, 0, bytes.length);

            String item_id = Long.toHexString(checksum.getValue());

            da = new DatabaseAccess();
            da.modifyData(
                    "INSERT INTO click_item "
                    + "(item_id,"
                    + "item_name,"
                    + "item_type,"
                    + "item_duration,"
                    + "item_describe,"
                    + "user_id,"
                    + "item_picture) "
                    + "VALUES ('" + item_id + "','"
                    + new String(item_name.getBytes("ISO-8859-1"), "UTF8") + "','"
                    + item_type + "','"
                    + new String(item_duration.getBytes("ISO-8859-1"), "UTF8") + "','"
                    + new String(item_describe.getBytes("ISO-8859-1"), "UTF8") + "','"
                    + user_id + "','"
                    + item_img
                    + "')");
            da.modifyData(
                    "INSERT INTO click_exchange_list "
                    + "(user_id,"
                    + "item_id,"
                    + "area) "
                    + "VALUES ('" + user_id + "','"
                    + item_id + "','"
                    + new String(item_city.getBytes("ISO-8859-1"), "UTF8") + "')");

            response.sendRedirect(".");
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
