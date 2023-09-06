/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import com.htran.repository.CvRepository;
import com.htran.repository.JobRepository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@PropertySource("classpath:configs.properties")
@Repository
@Transactional
public class CvRepositoryImpl implements CvRepository{

    @Autowired
    private LocalSessionFactoryBean factory;
    
//    @Autowired
//    private JobRepository jobRepo;
    
    @Override
    public boolean addCv(Cv cv) {
        Session s = this.factory.getObject().getCurrentSession();
        try {
            s.save(cv);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
}
