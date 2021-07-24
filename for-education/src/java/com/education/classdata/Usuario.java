/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.education.classdata;

/**
 *
 * @author JAFET
 */
public class Usuario {
    private int id;
    private String nombre;
    private String app;
    private String apm;
    private String correo;
    private int tel;
    private String contrasena;

    public Usuario(int id, String nombre, String app, String apm, String correo, int tel, String contrasena) {
        this.id = id;
        this.nombre = nombre;
        this.app = app;
        this.apm = apm;
        this.correo = correo;
        this.tel = tel;
        this.contrasena = contrasena;
    }

    public Usuario(String nombre, String app, String apm, String correo, String contrasena) {
        this.nombre = nombre;
        this.app = app;
        this.apm = apm;
        this.correo = correo;
        this.contrasena = contrasena;
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

    public String getApp() {
        return app;
    }

    public void setApp(String app) {
        this.app = app;
    }

    public String getApm() {
        return apm;
    }

    public void setApm(String apm) {
        this.apm = apm;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getTel() {
        return tel;
    }

    public void setTel(int tel) {
        this.tel = tel;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
}
