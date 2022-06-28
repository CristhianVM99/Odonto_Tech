package com.odontotech.controller;

import com.odontotech.dao.genericDAO;
import com.odontotech.dao.genericDAOimplements;
import com.odontotech.model.GenericClass;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controller_login", urlPatterns = {"/Controller_login"})
public class Controller_login extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // instrucciones de infirmacion
        try {
            genericDAO dao = new genericDAOimplements();
            
            String rol="user";
            String acceso = "denegado";

            String Usuario = request.getParameter("UserName");
            String Password = request.getParameter("UserPass");

            List<GenericClass> lista = dao.select("usuarios");

            for(GenericClass us : lista){
                String[] var = us.getToString();
                if (var[6].equals(Usuario) && var[8].equals(Password)) {
                    acceso = "permitido";
                    rol = var[14];
                }
            }
            if (acceso.equals("permitido")) {
                
                request.setAttribute("rol", rol);
                
                request.getRequestDispatcher("Principal.jsp").forward(request, response);
            }else{
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
        } catch (Exception e) {
            System.out.println("error " + e.getMessage());
        }
    }
}
