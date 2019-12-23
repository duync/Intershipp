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
@WebServlet(name = "updateAccount", urlPatterns = {"/updateAccount"})
public class updateAccount extends HttpServlet {

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

        User user = new User(idUser, username, password, fullname, gender, address, phoneNum, role, email);
        KhachHangModel kh_model = new KhachHangModel();
//        Account account = kh_model.getAccountByID(idAccount);

        if (yeucau.equals("update")) {
            int kq = kh_model.updateAccount(user);
            if (kq != 0) {
                session.setAttribute("accountList", kh_model.getListUser());
                page = "/WEB-INF/views/Admin/adminView.jsp";
            } else {
                message = "Update that bai";
                page = "Erro.jsp";
            }
        }
        
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        
        request.setAttribute("acc", user);
        request.getRequestDispatcher(page).forward(request, response);

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
