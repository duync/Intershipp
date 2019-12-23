/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;


import entities.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.KhachHangModel;

/**
 *
 * @author DELL
 */
@WebServlet(name = "getListAccount", urlPatterns = {"/getListAccount"})
public class getListAccount extends HttpServlet {

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

        int idUser = Integer.parseInt(request.getParameter("txtId"));
        String username = request.getParameter("txtname");
        String password = request.getParameter("txtpass");
        String role = request.getParameter("txtrole");
        String page = "";
        String message = "";
        String fullname = request.getParameter("txtfullname");
        String gender = request.getParameter("txtgender");
        String address = request.getParameter("txtaddress");
        String phoneNum = request.getParameter("txtphoneNum");
        String email = request.getParameter("txtemail");
        String yeucau = request.getParameter("yeucau");
        HttpSession session = request.getSession();

        KhachHangModel kh_model = new KhachHangModel();
        User user = kh_model.getUserById(idUser);
        if (yeucau.equals("laythongtin")) {
            if (user != null) {
                session.setAttribute("acc", user);
                page = "/WEB-INF/views/Admin/updateAccount.jsp";
            } else {
                message = "Ket noi database that bai";
                page = "Error.jsp";
            }
            request.setAttribute("thongbao", message);
            request.getRequestDispatcher(page).forward(request, response);
        }
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
