
package com.odontotech.controller;

import com.odontotech.dao.genericDAO;
import com.odontotech.dao.genericDAOimplements;
import com.odontotech.model.GenericClass;
import com.odontotech.model.Reserva_De_Citas;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controller_Reserva_De_Citas", urlPatterns = {"/Controller_Reserva_De_Citas"})
public class Controller_Reserva_De_Citas extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                try {
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";

            int id;
            genericDAO dao = new genericDAOimplements();
            List<GenericClass> lista_reservas = null; 
            List<byte[]> lista_imagenes = null;
            Reserva_De_Citas part = new Reserva_De_Citas();

            switch (action) {
                case "add":
                    //lista_pasciente = daoSeminario.getAll();
                    //request.setAttribute("lista_seminarios", lista_seminarios);
                    request.setAttribute("participante", part);
                    request.getRequestDispatcher("frmParticipante.jsp").forward(request, response);
                    break;
                case "edit":
                    //lista_seminarios = daoSeminario.getAll();
                    //request.setAttribute("lista_seminarios", lista_seminarios);
                    id = Integer.parseInt(request.getParameter("id"));
                    //part = dao.getById(id);
                    request.setAttribute("participante", part);
                    request.getRequestDispatcher("frmParticipante.jsp").forward(request, response);
                    break;
                case "delete":
                    id = Integer.parseInt(request.getParameter("id"));
                    //dao.delete(id);
                    response.sendRedirect("ParticipanteControlador");
                    break;
                case "view":
                    //obtener la lista de registros de los pascientes.==========
                    
                    lista_reservas = dao.select("reserva_de_citas");
                    request.setAttribute("lista_reservas", lista_reservas);
                    request.getRequestDispatcher("ReservasDeCitas.jsp").forward(request, response);  
                    break;
            }
        } catch (Exception e) {
            System.out.println("Error Get" + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

}
