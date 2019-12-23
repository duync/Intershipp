/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entities.Ticket;
import entities.TicketUser;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TicketModel;

/**
 *
 * @author DELL
 */
@WebServlet(name = "getListTicketByCustomer", urlPatterns = {"/getListTicketByCustomer"})
public class getListTicketByCustomer extends HttpServlet {

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
        String yeucau = request.getParameter("yeucau");
        String message = "";
        String page = "/WEB-INF/views/Customer/ticketView.jsp";
        HttpSession session = request.getSession();

//        String redirect = response.encodeRedirectURL(request.getContextPath() + "views/Customer/ticketView.jsp");
        TicketModel ticket_model = new TicketModel();

        Object id = session.getAttribute("Iduser");
        int idUser = Integer.parseInt(id.toString());

        ArrayList<TicketUser> listTicket = ticket_model.getTicketByIdUser(idUser);
        if (yeucau != null) {
            if (yeucau.equals("cancelTicket")) {
                int idTicket = Integer.parseInt(request.getParameter("idTicket"));
                int kq = ticket_model.cancelTicket(idTicket);
                listTicket = ticket_model.getTicketByIdUser(idUser);
                session.setAttribute("listTicket", listTicket);

            }
        }
   
        
        session.setAttribute("listTicket", listTicket);
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
