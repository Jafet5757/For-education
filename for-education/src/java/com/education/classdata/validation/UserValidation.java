/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.education.classdata.validation;

import com.education.classdata.Usuario;

/**
 *
 * @author Jafet
 * esta clase debe validar todas las entradas de los usuarios antes de que lleguen a la bbdd
 */
public class UserValidation {
    public boolean newUserValidation(Usuario newUser){
        return true;
    }
    
    public boolean userAccesValidation(String id,String password){
        return true;
    }
}
