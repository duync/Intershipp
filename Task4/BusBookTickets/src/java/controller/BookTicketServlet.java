/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Seat;
import entities.Ticket;
import entities.TicketPay;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.BookTicketModel;
import model.SeatModel;

/**
 *
 * @author khang
 */
@WebServlet(name = "BookTicketServlet", urlPatterns = {"/BookTicketServlet"})
public class BookTicketServlet extends HttpServlet {

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
        int idBus = Integer.parseInt(request.getParameter("txtBus"));
        int idUser = Integer.parseInt(request.getParameter("txtiduser"));
        String date = request.getParameter("txtdate");
        String yeucau = request.getParameter("yeucau");
        String page = "";
        String message = "";
        HttpSession session = request.getSession();
        BookTicketModel ticket_model = new BookTicketModel();
        SeatModel seat_model = new SeatModel();
        if (yeucau.equals("bookticket")) {
            ArrayList<TicketPay> ticketpay = new ArrayList();
            String[] listSeat = request.getParameterValues("chon");
            if (listSeat == null) {
                request.setAttribute("thong bao", "chua chon ghe");
                request.getRequestDispatcher("ViewBus.jsp").forward(request, response);
            }
            for (int i = 0; i < listSeat.length; i++) {

                String seat = listSeat[i];
                int idseat = Integer.parseInt(seat);
                Ticket ticket = new Ticket(idBus, idseat, idUser, date);
                int kq = ticket_model.bookTicket(ticket);
                Seat seatnew = seat_model.getSeatByIdseat(idseat);
                TicketPay newticket = new TicketPay(idBus, seatnew.getSeatNum(), idUser, date);
                ticketpay.add(newticket);
                if (kq != 0) {
                    message = "book thanh cong";
                    page = "/WEB-INF/views/Customer/ticketpay.jsp";
                } else {
                    message = "book that bai";
                }
            }
            session.setAttribute("listticketpay", ticketpay);
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
