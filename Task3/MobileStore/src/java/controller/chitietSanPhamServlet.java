/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.DanhMuc;
import entities.SanPham;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.DanhMucModel;
import model.SanPhamModel;


/**
 *
 * @author DELL
 */
@WebServlet(name = "chitietSanPhamServlet", urlPatterns = {"/chitietSanPhamServlet"})
public class chitietSanPhamServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            SanPhamModel sp_model = new SanPhamModel();
            String yeucau = request.getParameter("yeucau");
            String masp = request.getParameter("txtmasp");
            int madm=Integer.parseInt(request.getParameter("txtmadm"));
            DanhMucModel danhmuc_model= new DanhMucModel();

            String page = "";
            String message = "";
            if (yeucau.equals("xemsp")) {
                SanPham sp = sp_model.getSanPhamByMasp(masp);
                DanhMuc dm= danhmuc_model.getDanhmucbyMadm(madm);
                
//                System.out.println(sp==null);
                if (sp_model != null) {
                    request.setAttribute("sanpham",sp);
                    request.setAttribute("dm", dm);
                    page = "SPdetail.jsp";
                }
                else{
                    message = "Ket noi that bai";
                    page = "Error.jsp";
                }
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
