package com.odontotech.model;

public class Doctores {
    private int id;
    private String nombre;
    private String ci;
    private String especialidad;
    private int celular;
    private String direccion;
    private byte[] imagen;
    private int id_especialidad;

    public Doctores() {
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

    public String getEspecialidad() {
        return especialidad;
    }

    public void setEspecialidad(String especialidad) {
        this.especialidad = especialidad;
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

    public Doctores(int id, String nombre, String ci, String especialidad, int celular, String direccion, byte[] imagen, int id_especialidad) {
        this.id = id;
        this.nombre = nombre;
        this.ci = ci;
        this.especialidad = especialidad;
        this.celular = celular;
        this.direccion = direccion;
        this.imagen = imagen;
        this.id_especialidad = id_especialidad;
    }

    @Override
    public String toString() {
        return "doctores{" + "id=" + id + ", nombre=" + nombre + ", ci=" + ci + ", especialidad=" + especialidad + ", celular=" + celular + ", direccion=" + direccion + ", id_especialidad=" + id_especialidad + '}';
    }
    
}
