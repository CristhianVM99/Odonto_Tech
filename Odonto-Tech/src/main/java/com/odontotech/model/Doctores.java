package com.odontotech.model;

import javax.persistence.Lob;

public class Doctores {
    private int id;
    private String nombre;
    private String ci;
    private int celular;
    private String direccion;
    @Lob
    private byte[] imagen;
    private int id_especialidad;

    public Doctores() {
        this.id = 0;
        this.nombre = "";
        this.ci = "";
        this.celular = 0;
        this.direccion = "";
        this.imagen = null;
        this.id_especialidad = 0;
    }

    public Doctores(int id, String nombre, String ci, int celular, String direccion, byte[] imagen, int id_especialidad) {
        this.id = id;
        this.nombre = nombre;
        this.ci = ci;
        this.celular = celular;
        this.direccion = direccion;
        this.imagen = imagen;
        this.id_especialidad = id_especialidad;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCi() {
        return ci;
    }

    public void setCi(String ci) {
        this.ci = ci;
    }

    public int getCelular() {
        return celular;
    }

    public void setCelular(int celular) {
        this.celular = celular;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public byte[] getImagen() {
        return imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }

    public int getId_especialidad() {
        return id_especialidad;
    }

    public void setId_especialidad(int id_especialidad) {
        this.id_especialidad = id_especialidad;
    }

    @Override
    public String toString() {
        return "Doctores{" + "id=" + id + ", nombre=" + nombre + ", ci=" + ci + ", celular=" + celular + ", direccion=" + direccion + ", id_especialidad=" + id_especialidad + '}';
    }

    
    
}
