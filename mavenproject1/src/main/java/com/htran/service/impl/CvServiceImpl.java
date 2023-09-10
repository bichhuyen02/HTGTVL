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
                Map res = this.cloudinary.uploader().upload(cv.getFile().getBytes(), ObjectUtils.asMap("resource_type", "auto"));
                cv.setCv(res.get("secure_url").toString());
                cv.setActive(Boolean.FALSE);
            } catch (IOException ex) {
                Logger.getLogger(CvServiceImpl.class.getName()).log(Level.SEVERE, null, ex);

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

}
