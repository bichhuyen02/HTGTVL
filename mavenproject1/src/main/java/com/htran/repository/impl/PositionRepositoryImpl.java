/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Position;
import com.htran.repository.PositionRepository;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
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
public class PositionRepositoryImpl implements PositionRepository{

    @Autowired
    private LocalSessionFactoryBean factory;
    
    @Override
    public List<Position> getPositions(Map<String, String> params) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Position> q = b.createQuery(Position.class);
        Root root = q.from(Position.class);
        
        q.select(root);

        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public Position getPositionById(int id) {
        Session s = this.factory.getObject().getCurrentSession();
         return s.get(Position.class, id);
    }
    
}
