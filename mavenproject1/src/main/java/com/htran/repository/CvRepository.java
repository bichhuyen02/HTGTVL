/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CvRepository {
    boolean addCv(Cv cv);
    List<Cv> getCv(int id);
    List<Cv> getCvT(int id);
    Cv getCvById(int id);
    boolean deleteCv(int id);
    boolean UpdateActive(int id);
}
