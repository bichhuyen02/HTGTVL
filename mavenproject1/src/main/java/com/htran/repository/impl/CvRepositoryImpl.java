/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Company;
import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import com.htran.repository.CompanyRepository;
import com.htran.repository.CvRepository;
import com.htran.repository.JobRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
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
    
    @Autowired
    private JobRepository jobRepo;
    
    @Autowired
    private CompanyRepository compaRepo;
    
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



    @Override
    public List<Cv> getCv(int id) {
        Company c = this.compaRepo.getCompanyById(id);
        List<Job> jobs = this.jobRepo.getJobsByComId(c);
        List<Cv> cv = new ArrayList<>();
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Cv> q = b.createQuery(Cv.class);
        Root root = q.from(Cv.class);
        q.select(root);
        
        for (Job j : jobs) {
            Predicate predicates = b.equal(root.get("jobId"), j.getId());
            q.where(predicates);
            q.orderBy(b.desc(root.get("id")));
            Query query = s.createQuery(q);
            cv.addAll(query.getResultList());
        }
        
        return cv; 
    }
    
}
