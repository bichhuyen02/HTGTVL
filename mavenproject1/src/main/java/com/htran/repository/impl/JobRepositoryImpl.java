/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Category;
import com.htran.pojo.Company;
import com.htran.pojo.Job;
import com.htran.repository.JobRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author HUYEN TRAN
 */
@Repository
@PropertySource("classpath:configs.properties")
@Transactional
public class JobRepositoryImpl implements JobRepository {

    @Autowired
    private LocalSessionFactoryBean factory;
    @Autowired
    private Environment env;

    @Override
    public List<Job> getJobs(Map<String, String> params) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Job> q = b.createQuery(Job.class);
        Root root = q.from(Job.class);
        q.select(root);

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();

            String kw = params.get("kw");
            if (kw != null && !kw.isEmpty()) {
                predicates.add(b.like(root.get("title"), String.format("%%%s%%", kw)));
            }

            String locationId = params.get("locationId");
            if (locationId != null && !locationId.isEmpty()) {
                predicates.add(b.equal(root.get("locationId"), Integer.parseInt(locationId)));
            }

            String companyId = params.get("companyId");
            if (companyId != null && !companyId.isEmpty()) {
                predicates.add(b.equal(root.get("companyId"), Integer.parseInt(companyId)));
            }

            String positionId = params.get("positionId");
            if (positionId != null && !positionId.isEmpty()) {
                predicates.add(b.equal(root.get("positionId"), Integer.parseInt(positionId)));
            }

            String cateId = params.get("categoryId");
            if (cateId != null && !cateId.isEmpty()) {
                predicates.add(b.equal(root.get("categoryId"), Integer.parseInt(cateId)));
            }

            q.where(predicates.toArray(Predicate[]::new));
        }
        q.orderBy(b.desc(root.get("id")));
        Query query = s.createQuery(q);

        String page = params.get("page");
        int pageSize = Integer.parseInt(this.env.getProperty("PAGE_SIZE"));
        if (page != null) {
            query.setFirstResult((Integer.parseInt(page) - 1) * pageSize);
            query.setMaxResults(pageSize);
        }
        List<Job> jobs = query.getResultList(); 
        return jobs;
    }

    @Override
    public int countJob() {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("SELECT COUNT(*) From Job");

        return Integer.parseInt(q.getSingleResult().toString());
    }

    @Override
    public Job getJobById(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        return s.get(Job.class, id);
    }

    @Override
    public boolean addOrUpdateJob(Job j) {
        Session s = this.factory.getObject().getCurrentSession();
        try {
            if (j.getId() == null) {
                s.save(j);
            } else {
                s.update(j);
            }

            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean deleteJob(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        try {
            Job j = this.getJobById(id);
            s.delete(j);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Job> getJobsByComId(Company com) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Job> q = b.createQuery(Job.class);
        Root root = q.from(Job.class);
        q.select(root);
        Predicate predicates = b.equal(root.get("companyId"), com);
        q.orderBy(b.desc(root.get("id")));
        q.where(predicates);

        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<Job> getJobsByCateId(Category cate) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Job> q = b.createQuery(Job.class);
        Root root = q.from(Job.class);
        q.select(root);
        Predicate predicates = b.equal(root.get("categoryId"), cate);;
        q.where(predicates);

        Query query = s.createQuery(q);
        return query.getResultList();
    }

}
