/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.education.interfaces;

import com.education.classdata.Usuario;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Jafet
 */
public interface UserModelDao {
    Exception create (Usuario newUser)throws Exception;
    
    Exception update (Usuario updateUser)throws Exception;
    
    Exception delete (Usuario deleteUser)throws Exception;
    
    int getId (String correo)throws Exception;
    
    boolean getAcces(boolean esInt,HttpServletRequest request, HttpServletResponse response)throws Exception;
}
