/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.service;

import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CvService {
    boolean addCv(Cv cv);
    List<Cv> getCv(int id);
}
