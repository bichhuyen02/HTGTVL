/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Account;
import com.htran.pojo.User;
import com.htran.repository.AccountRepository;
import com.htran.repository.UserRepository;
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
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
@Transactional
@PropertySource("classpath:configs.properties")
public class UserRepositoryImpl implements UserRepository{
    
    @Autowired
    private LocalSessionFactoryBean factory;
    
    @Autowired
    private AccountRepository accRepo;
    
    @Override
    public List<User> getUsers(Map<String, String> map) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<User> q = b.createQuery(User.class);
        Root root = q.from(User.class);
        q.select(root);

        Query query = s.createQuery(q);
        return query.getResultList();
    }
    
    @Override
    public boolean addOrUpdateUser(User user) {
       Session s = this.factory.getObject().getCurrentSession();
        try {
            if (user.getId() == null) {
                Account acc = new Account();
                acc.setUsername(user.getUsername());
                acc.setPassword(user.getPassword());
                acc.setUserRole("ROLE_USER");
                acc.setActive(Boolean.TRUE);
                s.save(acc);
                
                user.setAccountId(acc);
                s.save(user);
            } else {
                s.update(user);
                Account acc = new Account();
                acc = this.accRepo.getAccountById(user.getAccountId().getId());
                acc.setUsername(user.getUsername());
                acc.setPassword(user.getPassword());
                acc.setUserRole("ROLE_EMP");
                s.update(acc);
            }
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public User getUserById(int id) {
         Session s = this.factory.getObject().getCurrentSession();
         return s.get(User.class, id);
    }

    @Override
    public boolean deleteUser(int id) {
      Session s = this.factory.getObject().getCurrentSession();
      try {
            User u = this.getUserById(id);
            s.delete(u);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }
    
}
