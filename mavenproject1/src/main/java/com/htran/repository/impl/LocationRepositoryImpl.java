/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Location;
import com.htran.repository.LocationRepository;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import java.util.ArrayList;
import javax.persistence.NoResultException;
import javax.persistence.criteria.Predicate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ACER
 */
@PropertySource("classpath:configs.properties")
@Repository
@Transactional
public class LocationRepositoryImpl implements LocationRepository {

    @Autowired
    private LocalSessionFactoryBean factory;
    
    @Autowired
    private Environment env;
    
    @Override
    public List<Location> getLocations(Map<String, String> map) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Location> q = b.createQuery(Location.class);
        Root root = q.from(Location.class);
        
        q.orderBy(b.desc(root.get("id")));
        q.select(root);

        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public boolean addOrUpdateLocation(Location lctn) {
         Session s = this.factory.getObject().getCurrentSession();
        try {
            if (lctn.getId() == null) {
                s.save(lctn);
            } 
            else {
                s.update(lctn);
            }
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
     @Override
    public Location getLocationById(int id) {
         Session s = this.factory.getObject().getCurrentSession();
         return s.get(Location.class, id);
       
    }

    @Override
    public boolean deleteLocation(int id) {
         Session s = this.factory.getObject().getCurrentSession();
      try {
            Location lctn = this.getLocationById(id);
            s.delete(lctn);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean getLocationByName(String name) {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("From Location Where name=:un");
        try {
            q.setParameter("un", name);
            q.getSingleResult();
            return true;
        } catch (NoResultException ex) {
            return false;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }
       
}

        
       