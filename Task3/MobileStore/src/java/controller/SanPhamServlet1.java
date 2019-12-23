/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.SanPham;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import model.SanPhamModel;
import model.UploadModel;

/**
 *
 * @author DELL
 */
@WebServlet(name = "SanPhamServlet1", urlPatterns = {"/SanPhamServlet1"})
public class SanPhamServlet1 extends HttpServlet {

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
//        try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet SanPhamServlet1</title>");            
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Servlet SanPhamServlet1 at " + request.getContextPath() + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }
    String masp = request.getParameter("txtmasp");
    String tensp = request.getParameter("txttensp");
    String gia = request.getParameter("txtgia");
    String stock = request.getParameter("txtstock");
    String mota = request.getParameter("txtmota");
    String trangthai = request.getParameter("txttrangthai");

    Part filehinh = request.getPart("txthinh");
    String tenhinh = filehinh.getSubmittedFileName();
    String madm = request.getParameter("txtmadm");
    String soluong = request.getParameter("txtsoluong");
    String theloai = request.getParameter("txttheloai");
    String message = "";
    String page = "";
    String yeucau = request.getParameter("yeucau"); 
    
    HttpSession session = request.getSession();
    SanPham sp = new SanPham(masp, tensp, Integer.parseInt(gia), mota, trangthai, tenhinh, Integer.parseInt(madm),Integer.parseInt(soluong),theloai
    );
    SanPhamModel sph_model = new SanPhamModel();
    
    if(yeucau.equals("insert")){
//        Upload hinh 
      String uploadRootPath = request.getServletContext().getRealPath("/Img");
        boolean kqupload = new UploadModel().uploadFile(tenhinh, filehinh, uploadRootPath);
        if(!kqupload){
            request.setAttribute("thongbao","Upload hinh that bai");
            request.getRequestDispatcher("Error.jsp").forward(request, response);
            return;
        }
        
        int kq1 = sph_model.insertSanPham(sp);
        if(kq1!=-1){
            if(kq1!=0){
                session.setAttribute("getlistSanPham",new SanPhamModel().getListSanPham());
                page = "addSP.jsp";
            }
            else{
                message = "Insert that bai";
                page = "Error.jsp";
            }
        }else{
            message = "Ket noi database that bai";
            page = "Error.jsp";
        }
        request.setAttribute("thongbao",message);
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
