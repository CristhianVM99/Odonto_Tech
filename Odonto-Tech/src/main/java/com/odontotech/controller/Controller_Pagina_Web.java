
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
                case "edit":

                    request.getRequestDispatcher("View_DentistaDeÑiños").forward(request, response);
                    break;
                case "delete":
                    response.sendRedirect("Controller_Pacientes");
                    break;
                case "view":
                    request.getRequestDispatcher("index.jsp").forward(request, response);  
                    break;
                case "index":
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
