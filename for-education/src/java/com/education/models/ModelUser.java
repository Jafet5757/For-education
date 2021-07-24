/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.education.models;

import com.education.classdata.Usuario;
import com.education.interfaces.UserModelDao;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 *
 * @author JAFET
 */
public class ModelUser implements UserModelDao{
    //instanciamos una variable de tipo DataSource para obtener el poolConnection
    private DataSource origenData;

    public ModelUser(DataSource origenData) {
        this.origenData = origenData;
    }

    @Override
    public Exception create(Usuario newUser) throws Exception {
        Connection cn= origenData.getConnection();
        //creamos la actualizacion preparada
        PreparedStatement ps = cn.prepareStatement("INSERT INTO usuario VALUES(NULL,?,?,?,?,NULL,?)");
        try{
            ps.setString(1,newUser.getNombre());
            ps.setString(2,newUser.getApp());
            ps.setString(3,newUser.getApm());
            ps.setString(4,newUser.getCorreo());
            ps.setString(5,newUser.getContrasena());
            ps.executeUpdate();
            return null;
        }catch(Exception e){
            e.printStackTrace();
            return e;
        }finally{
            ps.close();
            cn.close();
        }
    }

    @Override
    public Exception update(Usuario updateUser) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Exception delete(Usuario deleteUser) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int getId(String correo) throws Exception {
        Connection cn = origenData.getConnection();
        PreparedStatement ps = null;
        ResultSet rs=null;
        try{
            ps=cn.prepareStatement("SELECT id FROM usuario WHERE correo=?");
            ps.setString(1,correo);
            rs=ps.executeQuery();
            if(rs.next()){
                return rs.getInt(1);
            }else{
                return 0;
            }
        }catch(Exception e){
            e.printStackTrace();
            return 0;
        }finally{
            ps.close();
            cn.close();
        }
    }

    @Override
    public boolean getAcces(boolean esInt, HttpServletRequest request, HttpServletResponse response) throws Exception {
        Connection cn = origenData.getConnection();
        PreparedStatement ps = null;
        ResultSet rs=null;
        try{
            if(esInt){
                ps=cn.prepareStatement("SELECT * FROM usuario WHERE id=? AND contrasena=?");
                ps.setInt(1, Integer.parseInt(request.getParameter("username")));
            }else{
                ps=cn.prepareStatement("SELECT * FROM usuario WHERE correo=? AND contrasena=?");
                ps.setString(1,request.getParameter("username"));
            }
            ps.setString(2, request.getParameter("password"));
            rs=ps.executeQuery();
            if(rs.next()){
                return true;
            }else{
                return false;
            }
        }catch(Exception e){
            request.setAttribute("simpleMessage", "Ah ocurrido un error (desconocido) al intentar comprobar su informacion, revise que los datos sean correctos");
            request.setAttribute("allMessage", e);
            request.setAttribute("redirect", "login.jsp");
            RequestDispatcher disp=request.getRequestDispatcher("/error.jsp");
            disp.forward(request, response);
            return false;
        }finally{
            ps.close();
            cn.close();
        }
    }
}
