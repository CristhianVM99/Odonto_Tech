
package com.odontotech.controller;

import com.odontotech.dao.genericDAO;
import com.odontotech.dao.genericDAOimplements;
import com.odontotech.model.Doctores;
import com.odontotech.model.GenericClass;
import com.odontotech.model.especialidades;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
            List<GenericClass> lista_especialidades = null; 
            List<byte[]> lista_imagenes = null;
            Doctores doc = new Doctores();
            byte[] foto = null;
            switch (action) {
                case "add":
                    lista_especialidades = dao.select("especialidades");
                    List<especialidades> lista_esp = new ArrayList<>();
                    for(GenericClass cl : lista_especialidades) {
                        String[] val = cl.getToString();
                        
                        especialidades e = new especialidades();
                            e.setId(Integer.parseInt(val[2]));
                            e.setNombre_especialidad(val[4]);
                            lista_esp.add(e);
                    }
                    request.setAttribute("lista_especialidades", lista_esp);
                    request.setAttribute("doctor", doc);
                    request.getRequestDispatcher("FrmDoctores.jsp").forward(request, response);
                    break;
                case "edit":
                    //lista_seminarios = daoSeminario.getAll();
                    //lista_especialidades = dao.select("especialidades");
                    //request.setAttribute("lista_seminarios", lista_seminarios);
                    id = Integer.parseInt(request.getParameter("id"));
                    //part = dao.getById(id);
                    request.setAttribute("participante", doc);
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
                    List<Doctores> lista = new ArrayList<>();
                    for(GenericClass cl : lista_doctores) {
                        String[] val = cl.getToString();
                        
                        for (int i = 0; i < val.length; i++) {
                            System.out.print("[" + val[i] + "]");
                        }
                        System.out.println("");
                        
                        Doctores d = new Doctores();
                            d.setId(Integer.parseInt(val[2]));
                            d.setNombre(val[4]);
                            d.setCi(val[6]);
                            d.setEspecialidad(val[8]);
                            d.setCelular(Integer.parseInt(val[10]));
                            d.setDireccion(val[12]);
                            foto = dao.buscarById_image("doctores", Integer.parseInt(val[2]));
                            d.setImagen(foto);
                            d.setId_especialidad(Integer.parseInt(val[14]));
                            lista.add(d);
                    }
                    request.setAttribute("lista_doctores", lista);
                    request.getRequestDispatcher("Doctores.jsp").forward(request, response);  
                    break;
                case "mostrarFoto":
                    int posicion = Integer.parseInt(request.getParameter("id"));
                    byte[] imagen = dao.buscarById_image("doctores", posicion);
                    response.getOutputStream().write(imagen);                    
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
