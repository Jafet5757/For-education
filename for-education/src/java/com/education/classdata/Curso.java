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
public class Curso {
    private int id;
    private String nombre;
    private String duracion;
    private String descripcion;
    private String urlImage;
    private String canalC;
    private String nivel;
    private String subtitulo;
    private int tipo;
    private int culpa;

    public Curso(String nombre, String duracion, String descripcion, String urlImage, String canalC, String nivel, String subtitulo, int tipo, int culpa) {
        this.nombre = nombre;
        this.duracion = duracion;
        this.descripcion = descripcion;
        this.urlImage = urlImage;
        this.canalC = canalC;
        this.nivel = nivel;
        this.subtitulo = subtitulo;
        this.tipo = tipo;
        this.culpa = culpa;
    }

    public Curso(int id, String nombre, String duracion, String descripcion, String urlImage, String canalC, String nivel, String subtitulo, int tipo, int culpa) {
        this.id = id;
        this.nombre = nombre;
        this.duracion = duracion;
        this.descripcion = descripcion;
        this.urlImage = urlImage;
        this.canalC = canalC;
        this.nivel = nivel;
        this.subtitulo = subtitulo;
        this.tipo = tipo;
        this.culpa = culpa;
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

    public String getDuracion() {
        return duracion;
    }

    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }

    public String getCanalC() {
        return canalC;
    }

    public void setCanalC(String canalC) {
        this.canalC = canalC;
    }

    public String getNivel() {
        return nivel;
    }

    public void setNivel(String nivel) {
        this.nivel = nivel;
    }

    public String getSubtitulo() {
        return subtitulo;
    }

    public void setSubtitulo(String subtitulo) {
        this.subtitulo = subtitulo;
    }

    public int getTipo() {
        return tipo;
    }

    public void setTipo(int tipo) {
        this.tipo = tipo;
    }

    public int getCulpa() {
        return culpa;
    }

    public void setCulpa(int culpa) {
        this.culpa = culpa;
    }
}
