/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.education.models;

import javax.sql.DataSource;

/**
 *
 * @author JAFET
 */
public class ModelUser {
    //instanciamos una variable de tipo DataSource para obtener el poolConnection
    private DataSource origenData;

    public ModelUser(DataSource origenData) {
        this.origenData = origenData;
    }
}
