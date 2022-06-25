
package com.odontotech.controller;

import com.odontotech.dao.genericDAO;
import com.odontotech.dao.genericDAOimplements;
import com.odontotech.model.Doctores;
import com.odontotech.model.GenericClass;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controller_Doctores", urlPatterns = {"/Controller_Doctores"})
public class Controller_Doctores extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
                try {
            String action = (request.getParameter("action") != null) ? request.getParameter("action") : "view";

            int id;
            genericDAO dao = new genericDAOimplements();

            List<GenericClass> lista_doctores = null; 
            List<byte[]> lista_imagenes = null;
            Doctores part = new Doctores();

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
                    
                    lista_doctores = dao.select("doctores");
                    request.setAttribute("lista_doctores", lista_doctores);
                    request.getRequestDispatcher("Doctores.jsp").forward(request, response);  
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
