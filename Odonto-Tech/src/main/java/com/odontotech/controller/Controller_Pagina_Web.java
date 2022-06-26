
package com.odontotech.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controller_Pagina_Web", urlPatterns = {"/Controller_Pagina_Web"})
public class Controller_Pagina_Web extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String view = request.getParameter("view");

            switch (view) {
                case "Dentista_De_Niños":
                    request.getRequestDispatcher("View_DentistaDeNiños.jsp").forward(request, response);
                    break;
                case "Higiene_Dental":
                    request.getRequestDispatcher("View_HigieneDental.jsp").forward(request, response);
                    break;
                case "Empastes_Dentales":
                    request.getRequestDispatcher("View_EmpastesDentales.jsp").forward(request, response);
                    break;
                case "Puentes_Dentales":
                    request.getRequestDispatcher("View_Puentes_Dentales.jsp").forward(request, response);
                    break;
                case "Coronas_Dentales":
                    request.getRequestDispatcher("View_CoronasDentales.jsp").forward(request, response);
                    break;
                case "Extraccion_Dental":
                    request.getRequestDispatcher("View_ExtraccionDental.jsp").forward(request, response);
                    break;
                case "Dentadura_Postiza":
                    request.getRequestDispatcher("View_DentaduraPostiza.jsp").forward(request, response);
                    break;
                case "Blanqueamiento_Dental":
                    request.getRequestDispatcher("View_BlanqueamientoDental.jsp").forward(request, response);
                    break;
                case "Brakets":
                    request.getRequestDispatcher("View_Brakets.jsp").forward(request, response);
                    break;
                case "Carillas_Dentales":
                    request.getRequestDispatcher("View_CarillasDentales.jsp").forward(request, response);
                    break;
                case "Adhesion_Dental":
                    request.getRequestDispatcher("View_AdhesionDental.jsp").forward(request, response);
                    break;
                case "view":
                    request.getRequestDispatcher("index.jsp").forward(request, response);
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
