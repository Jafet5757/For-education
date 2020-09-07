/*
 * Este es el controlador del usuario, aqí es donde se realizarán todas las acciones
 * del usuario con la vbase de datos
 */
package com.education.controller;

import com.education.models.ModelUser;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author JAFET
 */
public class UserController extends HttpServlet {
    private ModelUser modelo;
    
    //definir el datasource
    @Resource(name="jdbc/Data")
    private DataSource pool;

    @Override
    public void init() throws ServletException {
        super.init();
        try{
            modelo = new ModelUser(pool);
        }catch(Exception e){
            e.printStackTrace();
            throw new ServletException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String instruction = request.getParameter("instruccion");
        switch(instruction){
            case "newUser": out.println(request.getParameter("app"));
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
