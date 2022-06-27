package com.odontotech.model;

import java.sql.Date;

public class almacen {

    private int id;
    private String nombre;
    private int cantidad;
    private Date fecha;
    private int id_doctor;

    public almacen() {
    }

    public almacen(int id, String nombre, int cantidad, Date fecha, int id_doctor) {
        this.id = id;
        this.nombre = nombre;
        this.cantidad = cantidad;
        this.fecha = fecha;
        this.id_doctor = id_doctor;
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

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getId_doctor() {
        return id_doctor;
    }

    public void setId_doctor(int id_doctor) {
        this.id_doctor = id_doctor;
    }

    @Override
    public String toString() {
        return "almacen{" + "id=" + id + ", nombre=" + nombre + ", cantidad=" + cantidad + ", fecha=" + fecha + ", id_doctor=" + id_doctor + '}';
    }

}
