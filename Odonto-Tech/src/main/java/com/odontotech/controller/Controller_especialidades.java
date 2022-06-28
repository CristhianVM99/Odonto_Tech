package com.odontotech.controller;

import com.odontotech.dao.genericDAO;
import com.odontotech.dao.genericDAOimplements;
import com.odontotech.model.GenericClass;
import com.odontotech.model.especialidades;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Controller_especialidades", urlPatterns = {"/Controller_especialidades"})
public class Controller_especialidades extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String option = (request.getParameter("option") != null) ? request.getParameter("option") : "";

            genericDAO dao = new genericDAOimplements();

            List<GenericClass> lista_especialidad=null;

            especialidades especialidad = new especialidades();
            String valor;
            String visibilidad;

            switch (option) {
                case "add":
                    valor = "nuevo";
                    visibilidad = "text";
                    visibilidad = "text";
                    request.setAttribute("valor", valor);
                    request.setAttribute("visibilidad", visibilidad);
                    request.setAttribute("especialidad", especialidad);
                    request.getRequestDispatcher("FrmEspecialidades.jsp").forward(request, response);
                    break;
                case "edit":
                    valor = "editado";
                    visibilidad = "hidden";
                    int pos = Integer.parseInt(request.getParameter("id"));
                    String[] esp = dao.buscarById("especialidades", pos);

                    especialidades es = new especialidades();
                    es.setNombre_especialidad(esp[2]);
                    request.setAttribute("valor", valor);
                    request.setAttribute("visibilidad", visibilidad);
                    request.setAttribute("especialidades", es);
                    request.getRequestDispatcher("FrmEspecialidades.jsp").forward(request, response);
                    break;
                case "kill":
                    int id = Integer.parseInt(request.getParameter("id"));
                    dao.delete("especialidades", id);
                    response.sendRedirect("Controller_especialidades");
                    break;
                case "":
                    lista_especialidad = dao.select("especialidades");
            }
        } catch (Exception e) {
            System.out.println("Error Get" + e.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        especialidades es=new especialidades();
        genericDAO dao = new genericDAOimplements();
        
        String valor = request.getParameter("valor");
        String nombre = request.getParameter("nombre_especialidad");
        int id = Integer.parseInt(request.getParameter("id"));
        
        es.setId(id);
        es.setNombre_especialidad(nombre);
        
        if (valor.equals("nuevo")) {
            try{
                dao.insert(es.toString(),null);
            }catch(Exception ex){
                System.out.println("error al insertar: " + ex.getMessage());
            }       
        }else{
            try{
                dao.update(es.toString(),null);
            }catch(Exception e){
                System.out.println("error al editar: " + e.getMessage());
            }
        }
        response.sendRedirect("Controller_especialidades");
    }
}
