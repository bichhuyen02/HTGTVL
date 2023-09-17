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
            cv.setActive(Boolean.FALSE);
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
            List<Predicate> predicates = new ArrayList<>();
            predicates.add(b.equal(root.get("jobId"), j.getId()));
            predicates.add(b.equal(root.get("active"), false));
            q.where(predicates.toArray(Predicate[]::new));
            q.orderBy(b.desc(root.get("id")));
            Query query = s.createQuery(q);
            cv.addAll(query.getResultList());
        }
        return cv; 
    }

    @Override
    public boolean deleteCv(int id) {
        Session s = this.factory.getObject().getCurrentSession();
      try {
            Cv c = this.getCvById(id);
            s.delete(c);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public Cv getCvById(int id) {
        Session s = this.factory.getObject().getCurrentSession();
         return s.get(Cv.class, id);
    }

    @Override
    public boolean UpdateActive(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        Cv c = this.getCvById(id);
        Job j = this.jobRepo.getJobById(c.getJobId().getId());
        
        try {
            c.setActive(Boolean.TRUE);
            s.update(c);
            j.setQuantity(j.getQuantity()-1);
            s.update(j);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Cv> getCvT(int id) {
        Company c = this.compaRepo.getCompanyById(id);
        List<Job> jobs = this.jobRepo.getJobsByComId(c);
        List<Cv> cv = new ArrayList<>();
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Cv> q = b.createQuery(Cv.class);
        Root root = q.from(Cv.class);
        q.select(root);
        
        for (Job j : jobs) {
            List<Predicate> predicates = new ArrayList<>();
            predicates.add(b.equal(root.get("jobId"), j.getId()));
            predicates.add(b.equal(root.get("active"), true));
            q.where(predicates.toArray(Predicate[]::new));
            q.orderBy(b.desc(root.get("id")));
            Query query = s.createQuery(q);
            cv.addAll(query.getResultList());
        }
        return cv; 
    }
    
}
