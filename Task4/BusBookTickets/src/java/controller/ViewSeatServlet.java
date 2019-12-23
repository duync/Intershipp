/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Bus;
import entities.User;
import entities.viewSeat;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.SeatModel;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;
import model.BusModel;

/**
 *
 * @author khang
 */
@WebServlet(name = "ViewSeatServlet", urlPatterns = {"/ViewSeatServlet"})
public class ViewSeatServlet extends HttpServlet {

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
//        SeatModel seat_model = new SeatModel();
//        BusModel bus_model = new BusModel();
//        int idBus = Integer.parseInt(request.getParameter("txtBus"));
//        String date = request.getParameter("txtdate");
//        String yeucau = request.getParameter("yeucau");
//        String page = "/WEB-INF/views/Customer/viewseat.jsp";
//        String message = "";
//        HttpSession session = request.getSession();
//        if (yeucau.equals("book")) {
//            ArrayList<viewSeat> list = seat_model.getidSeat(idBus);
//            for (int i = 0; i < list.size(); i++) {
//                if (seat_model.checkStatus(list.get(i).getIdSeat(), idBus, date)) {
//                    list.get(i).setStatus(1);
//                }
//            }
//            Bus bus = bus_model.getBus(idBus);
//            session.setAttribute("bus", bus);
//            session.setAttribute("listseat", list);
//        }
//
//        request.setAttribute("thongbao", message);
//        request.getRequestDispatcher(page).forward(request, response);
        HttpSession session = request.getSession();
        SeatModel seat_model = new SeatModel();
        int idBus = Integer.parseInt(request.getParameter("txtBus"));
        String date = request.getParameter("txtdate");
        String yeucau = request.getParameter("yeucau");
        User user = (User) session.getAttribute("us");
        String role = user.getRole();
        String page = "";
        if (role.equals("Customer")) {
            page = "/WEB-INF/views/Customer/viewseat.jsp";
        } else if (role.equals("Seller")) {
            page = "/WEB-INF/views/Seller/ViewSeatSeller.jsp";
        }
        String message = "";

        if (yeucau.equals("book")) {
            ArrayList<viewSeat> list = seat_model.getidSeat(idBus);
            for (int i = 0; i < list.size(); i++) {
                if (seat_model.checkStatus(list.get(i).getIdSeat(), idBus, date)) {
                    list.get(i).setStatus(1);
                }
            }
            session.setAttribute("listseat", list);
        }

        request.setAttribute("thongbao", message);
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
