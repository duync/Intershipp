/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.KhachHang;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AdminModel;
import model.KhachHangModel;



/**
 *
 * @author DELL
 */
@WebServlet(name = "KhachHangServerlet", urlPatterns = {"/KhachHangServerlet"})
public class KhachHangServerlet extends HttpServlet {

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

        String username = request.getParameter("txtname");
        String password = request.getParameter("txtpass");
        String page = "";
        String message = "";
        HttpSession session = request.getSession();

        KhachHang kh = new KhachHang(username, password);
        KhachHangModel kh_model = new KhachHangModel();
        
        
        int kqlogin = kh_model.LoginKhachHang(kh);
        
        if(kqlogin!=-1){
            if(kqlogin==1){
                message="Login thành công";
                page="insertSP.jsp";
                session.setAttribute("getListProducts", new AdminModel().getListProducts());
            }
            else if(kqlogin==2){
                message="Sai password";
                page="Error.jsp";
            }
            else if(kqlogin==3){
                message="Username không tồn tại";
                page="Error.jsp";
            }
            request.setAttribute("thongbao", kh);
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
