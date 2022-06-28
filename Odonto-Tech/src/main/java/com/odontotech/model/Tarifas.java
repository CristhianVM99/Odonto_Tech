package com.odontotech.model;

public class Tarifas {

    private int id;
    private int id_especialidad;
    private String servicio;
    private double precio;
    private byte[] imagen;
    private String nombre_especialidad;

    public Tarifas(int id, int id_especialidad, String servicio, double precio, byte[] imagen, String nombre_especialidad) {
        this.id = id;
        this.id_especialidad = id_especialidad;
        this.servicio = servicio;
        this.precio = precio;
        this.imagen = imagen;
        this.nombre_especialidad = nombre_especialidad;
    }

    public Tarifas() {
        this.id = 0;
        this.id_especialidad = 0;
        this.servicio = "";
        this.precio = 0.0;
        this.imagen = null;
        this.nombre_especialidad = "";
    }
    //metodos getters y setters

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getId_especialidad() {
        return this.id_especialidad;
    }

    public void setId_especialidad(int id_especialidad) {
        this.id_especialidad = id_especialidad;
    }

    public String getServicio() {
        return this.servicio;
    }

    public void setServicio(String servicio) {
        this.servicio = servicio;
    }

    public double getPrecio() {
        return this.precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public byte[] getImagen() {
        return this.imagen;
    }

    public void setImagen(byte[] imagen) {
        this.imagen = imagen;
    }

    public String getNombre_especialidad() {
        return this.nombre_especialidad;
    }

    public void setNombre_especialidad(String nombre_especialidad) {
        this.nombre_especialidad = nombre_especialidad;
    }

    // metodo toString 
    @Override
    public String toString() {
        return "Tarifas{" + "id=" + id + ", id_especialidad=" + id_especialidad + ", servicio=" + servicio + ", precio=" + precio + ", nombre_especialidad=" + nombre_especialidad + "}";
    }

}//class
