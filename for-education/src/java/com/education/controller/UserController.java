/*
 * Este es el controlador del usuario, aqí es donde se realizarán todas las acciones
 * del usuario con la vbase de datos
 */
package com.education.controller;

import com.education.classdata.Usuario;
import com.education.classdata.validation.UserValidation;
import com.education.models.ModelUser;
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
public class UserController extends HttpServlet {
    private ModelUser modelo;
    private UserValidation validation;
    
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
        request.setAttribute("simpleMessage", "Ah ocurridos un error (404), no se ha encontrado la pagina que busca");
                    request.setAttribute("allMessage", "la pagina que busca pudo haber cambiado o es erronea, dirijase al inicio de nuestra web donde encontrará nuestras páginas recientes.");
                    request.setAttribute("redirect", "index.jsp");
                    RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                    disp.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out=response.getWriter();
        String instruction = request.getParameter("instruccion");
        switch(instruction){
            case "newUser": {
                try {
                    insertNewUser(request,response);
                } catch (Exception ex) {
                    //esto debe mandarnos a una ventana de errores y mostrarnos que pasó
                    Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                    request.setAttribute("simpleMessage", "Ah ocurrido un error (desconocido) al intentar guardar su informacion, revise que los datos sean correctos");
                    request.setAttribute("allMessage", ex);
                    request.setAttribute("redirect", "logup.jsp");
                    RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                    disp.forward(request, response);
                }
            }
            break;
            
            case "login":
                    try{
                        userAcces(request,response);
                    }catch(Exception ex){
                        Logger.getLogger(UserController.class.getName()).log(Level.SEVERE, null, ex);
                        request.setAttribute("simpleMessage", "Ah ocurrido un error (desconocido) al intentar comprobar su informacion, revise que los datos sean correctos");
                        request.setAttribute("allMessage", ex);
                        request.setAttribute("redirect", "login.jsp");
                        RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                        disp.forward(request, response);
                    }
            break;
            default: request.setAttribute("simpleMessage", "Ah ocurridos un error (404), no se ha encontrado la pagina que busca");
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
    }// </editor-fold>

    private void insertNewUser(HttpServletRequest request, HttpServletResponse response)throws Exception {
        PrintWriter out=response.getWriter();
        if(request.getParameter("p1").equals(request.getParameter("p2"))){
            Usuario newUser=new Usuario(request.getParameter("nombre"),request.getParameter("app"),request.getParameter("apm"),request.getParameter("correo"),request.getParameter("p1"));
            validation=new UserValidation();
            if(validation.newUserValidation(newUser)){
                try{
                    //aquí debe mandarle los datos al modelo para insertar la info en la bbdd
                    Exception e=modelo.create(newUser);
                    //comprobamos si hubo un error durante la ejecucion
                    if(e!=null){
                        //si entra entonces hubo un error
                        request.setAttribute("simpleMessage", "Ah ocurrido un error al intentar guardar su informacion, revise que los datos sean correctos, probablemente el correo ya fue registrado");
                        request.setAttribute("allMessage", e);
                        request.setAttribute("redirect", "logup.jsp");
                        RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                        disp.forward(request, response);
                    }
                    //pedimos el id del usuario conforme a su correo
                    int id=modelo.getId(request.getParameter("correo"));
                    if(id!=0){
                        request.setAttribute("id_user", id);
                        //enviar ese request a la pagina jsp
                        RequestDispatcher disp=request.getRequestDispatcher("/home-courses.jsp");
                        disp.forward(request, response);
                    }else{
                        //esto si el id==0, que significa que ocurrio un error, no se encontró su id
                        request.setAttribute("simpleMessage", "Ah ocurrido un error (desconocido) al intentar comprobar su informacion");
                        request.setAttribute("allMessage", "Probablemente ingresó datos no adecuados, comunique se con soporte tecnico 'moranorozcokevinjafet@gmail.com'");
                        request.setAttribute("redirect", "logup.jsp");
                        RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                        disp.forward(request, response);
                    }
                }catch(Exception e){
                    //en caso de que ocurra un error aquí debe mandar a una ventana de error
                    //regularmente puede ser causada por el getId()
                    request.setAttribute("simpleMessage", "Ah ocurrido un error (desconocido) al intentar guardar su informacion, revise que los datos sean correctos");
                    request.setAttribute("allMessage", e);
                    request.setAttribute("redirect", "logup.jsp");
                    RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                    disp.forward(request, response);
                }
            }else{
                //este es en caso de que la validacion no sea correcta
                request.setAttribute("simpleMessage", "Ah ocurrido un error al intentar guardar su informacion, revise que los datos sean correctos");
                request.setAttribute("allMessage", "Su informacion no tiene las caracterizticas adecuadas, evite simbolos");
                request.setAttribute("redirect", "logup.jsp");
                RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                disp.forward(request, response);
            }
        }else{
            //este se debe ejecutar en caso de que las contraseñas no coincidan
            request.setAttribute("simpleMessage", "Ah ocurrido un error al intentar guardar su informacion, revise que los datos sean correctos");
                        request.setAttribute("allMessage", "las contraseñas no coinciden");
                        request.setAttribute("redirect", "logup.jsp");
                        RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                        disp.forward(request, response);
        }
    }

    private void userAcces(HttpServletRequest request, HttpServletResponse response) throws Exception {
        boolean esInt=false;
        try{
            Integer.parseInt(request.getParameter("username"));
            esInt=true;
        }catch(Exception ex){
            request.getParameter("username");
            esInt=false;
        }
        
        if(true){
            try{
                if(modelo.getAcces(esInt, request, response)){
                    request.setAttribute("id_user", request.getParameter("username"));
                    RequestDispatcher disp=request.getRequestDispatcher("/home-courses.jsp");
                    disp.forward(request, response);
                }
            }catch(Exception e){
                e.printStackTrace();
                request.setAttribute("simpleMessage", "Ah ocurrido un error al intentar comprobar su informacion, revise que los datos sean correctos");
                request.setAttribute("allMessage", e);
                request.setAttribute("redirect", "login.jsp");
                RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
                disp.forward(request, response);
            }
        }else{
            request.setAttribute("simpleMessage", "Ah ocurrido un error al intentar comprobar su informacion, sus datos no son correctos");
            request.setAttribute("allMessage", "Se detectaron anomalias en la estructura de la información");
            request.setAttribute("redirect", "login.jsp");
            RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
            disp.forward(request, response);
        }
    }

}
