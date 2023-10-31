/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import com.htran.repository.CvRepository;
import com.htran.service.CvService;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class CvServiceImpl implements CvService {

    @Autowired
    private CvRepository cvRepo;

    @Autowired
    private Cloudinary cloudinary;

    @Autowired
    private SimpleDateFormat simpleDateFormat;

    @Override
    public boolean addCv(Cv cv) {
        if (!cv.getFile().isEmpty()) {
            Date currentDate = new Date();
            try {
                cv.setDayCreate(this.simpleDateFormat
                        .parse(this.simpleDateFormat.format(currentDate)));
              
            cv.setName(cv.getFile().getOriginalFilename());
             try {
                 cv.setData(cv.getFile().getBytes());
             } catch (IOException ex) {
                 Logger.getLogger(CvServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
             }

            } catch (ParseException ex) {
                Logger.getLogger(CvServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return this.cvRepo.addCv(cv);
    }

    @Override
    public List<Cv> getCv(int id) {
        return this.cvRepo.getCv(id);
    }

    @Override
    public Cv getCvById(int id) {
        return this.cvRepo.getCvById(id);
    }

    @Override
    public boolean deleteCv(int id) {
        return this.cvRepo.deleteCv(id);
    }

    @Override
    public boolean UpdateActive(int id) {
        return this.cvRepo.UpdateActive(id);
    }

    @Override
    public List<Cv> getCvT(int id) {
        return this.cvRepo.getCvT(id);
    }

}
