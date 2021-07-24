/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.education.models;

import javax.sql.*;

/**
 *
 * @author JAFET
 */
public class ModelCourse {
    private DataSource origenData;

    public ModelCourse(DataSource origenData) {
        this.origenData = origenData;
    }
}
