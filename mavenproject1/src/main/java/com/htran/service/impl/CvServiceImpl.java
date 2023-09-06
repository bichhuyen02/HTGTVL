/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import com.htran.pojo.Cv;
import com.htran.repository.CvRepository;
import com.htran.service.CvService;
import java.io.IOException;
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
public class CvServiceImpl implements CvService{

    @Autowired
    private CvRepository cvRepo;
    
    @Autowired
    private Cloudinary cloudinary;
    
    @Override
    public boolean addCv(Cv cv) {
        if (!cv.getFile().isEmpty()) {         
            try {
                    Map res = this.cloudinary.uploader().upload(cv.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                    cv.setCv(res.get("secure_url").toString());
                } catch (IOException ex) {
                    Logger.getLogger(CvServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
                }
        }
        return this.cvRepo.addCv(cv);
    }
    
}
