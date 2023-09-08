/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Category;
import com.htran.pojo.Cv;
import com.htran.pojo.Job;
import com.htran.repository.CategoryRepository;
import com.htran.repository.JobRepository;
import com.htran.repository.StatsRepository;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
@Transactional
public class StatsRepositoryImpl implements StatsRepository {

    @Autowired
    private LocalSessionFactoryBean factory;

    @Autowired
    private JobRepository jobRepo;

    @Autowired
    private CategoryRepository cateRepo;

    @Override
    public List<Object[]> statsMajor() {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root rootP = q.from(Job.class);
        Root rootC = q.from(Category.class);
        q.where(b.equal(rootP.get("categoryId"), rootC.get("id")));

        q.multiselect(rootC.get("id"), rootC.get("name"), b.count(rootP.get("id")));
        q.groupBy(rootC.get("id"));

        Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<Object[]> statsRevenue(int year) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root rootP = q.from(Cv.class);
        Root rootO = q.from(Job.class);
        Root rootC = q.from(Category.class);

        List<Predicate> predicates = new ArrayList<>();
        predicates.add(b.equal(rootO.get("id"), rootP.get("jobId")));
        predicates.add(b.equal(rootO.get("categoryId"), rootC.get("id")));
        predicates.add(b.equal(b.function("YEAR", Integer.class, rootP.get("dayCreate")), year));

        q.multiselect(rootC.get("id"), rootC.get("name"), b.count(rootP.get("id")));

        q.where(predicates.toArray(Predicate[]::new));
        q.groupBy(rootC.get("id"));

        Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<Object[]> quarterStats(int quarter, int year) {
        Session session = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);

        Root rootP = q.from(Cv.class);
        Root rootO = q.from(Job.class);
        Root rootC = q.from(Category.class);

        List<Predicate> predicates = new ArrayList<>();
        predicates.add(b.equal(rootO.get("id"), rootP.get("jobId")));
        predicates.add(b.equal(rootO.get("categoryId"), rootC.get("id")));
        predicates.add(b.equal(b.function("QUARTER", Integer.class, rootP.get("dayCreate")), quarter));
        predicates.add(b.equal(b.function("YEAR", Integer.class, rootP.get("dayCreate")), year));
        

        q.multiselect(rootC.get("id"), rootC.get("name"), b.count(rootP.get("id")));

        q.where(predicates.toArray(Predicate[]::new));
        q.groupBy(rootC.get("id"));

        Query query = session.createQuery(q);
        return query.getResultList();
    }
}
