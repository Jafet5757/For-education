/*
 * aqí es donde se conectará con el modelo todo lo relacionado con los cursos
 */
package com.education.controller;

import com.education.classdata.Curso;
import com.education.models.ModelCourse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author JAFET
 */
public class Coursecontroller extends HttpServlet {
    //primero delcaramos uanas variables globales de los cursos
    private ModelCourse modelo;
    
    
    //definir el datasource
    @Resource(name="jdbc/Data")
    private DataSource pool;
    
    
    @Override
    public void init() throws ServletException {
        super.init();
        try{
            modelo = new ModelCourse(pool);
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
            case "NewCourse":
                try{
                    createNewCourse(request,response);
                }catch(Exception ex){
                    ex.printStackTrace();
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                    request.setAttribute("simpleMessage", "Ah ocurrido un error (desconocido) al intentar guardar su informacion, revise que los datos sean correctos");
                    request.setAttribute("allMessage", ex);
                    request.setAttribute("redirect", "logup.jsp");
                    RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                    disp.forward(request, response);
                }
            break;
            default:
                request.setAttribute("simpleMessage", "Ah ocurridos un error (404), no se ha encontrado la pagina que busca");
                request.setAttribute("allMessage", "la pagina que busca pudo haber cambiado o es erronea, dirijase al inicio de nuestra web donde encontrará nuestras páginas recientes.");
                request.setAttribute("redirect", "index.jsp");
                RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                disp.forward(request, response);
            break;
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

    private void createNewCourse(HttpServletRequest request, HttpServletResponse response)throws Exception {
        Curso newCourse=new Curso(
            request.getParameter("nombre"),
            request.getParameter("rduracion"),
            request.getParameter("ui"),
            request.getParameter("rnivel"),
            request.getParameter("creator"),
            request.getParameter("cc"),
            request.getParameter("sb"),
            Integer.parseInt(request.getParameter("dc")),
            Integer.parseInt(request.getParameter("id_user"))
        );
        //tenemos que validar el objeto newCourse
        //y si esta bien lo guardamos en la bbdd
    }

}
