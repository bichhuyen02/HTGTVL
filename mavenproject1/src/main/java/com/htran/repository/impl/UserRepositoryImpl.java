/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Account;
import com.htran.pojo.User;
import com.htran.repository.AccountRepository;
import com.htran.repository.UserRepository;
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
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private LocalSessionFactoryBean factory;

    @Autowired
    private AccountRepository accRepo;

    @Override
    public List<User> getUsers(Map<String, String> params) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<User> q = b.createQuery(User.class);
        Root root = q.from(User.class);
        q.select(root);

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();

            String kw = params.get("kw");
            if (kw != null && !kw.isEmpty()) {
                predicates.add(b.like(root.get("name"), kw));
            }

            String experience = params.get("experience");
            if (experience != null && !experience.isEmpty()) {
                predicates.add(b.equal(root.get("experience"), experience));
            }

            String majors = params.get("majors");
            if (majors != null && !majors.isEmpty()) {
                predicates.add(b.equal(root.get("majors"), majors));
            }

            String gender = params.get("gender");
            if (gender != null && !gender.isEmpty()) {
                predicates.add(b.equal(root.get("gender"),gender));
            }

            String level = params.get("level");
            if (level != null && !level.isEmpty()) {
                predicates.add(b.equal(root.get("level"), level));
            }
            
            String location = params.get("location");
            if (level != null && !level.isEmpty()) {
                predicates.add(b.equal(root.get("location"),  location));
            }

            q.where(predicates.toArray(Predicate[]::new));
        }

        Query query = s.createQuery(q);

        List<User> users = query.getResultList();
        for (User u : users) {
            u.setUsername(u.getAccountId().getUsername());
            u.setPassword(u.getAccountId().getPassword());
            u.setConfirmPassword(u.getAccountId().getPassword());
        }
        return users;
    }

    @Override
    public boolean addOrUpdateUser(User user) {
        Session s = this.factory.getObject().getCurrentSession();
        try {
            Account acc = new Account();
            User u = user;
            if (user.getId() != null) {

                int id = u.getAccountId().getId();
                acc = this.accRepo.getAccountById(id);

                acc.setUsername(u.getUsername());
                acc.setPassword(u.getPassword());
                acc.setUserRole("ROLE_USER");
                s.update(acc);
            }

            if (user.getId() == null) {
                acc.setUsername(user.getUsername());
                acc.setPassword(user.getPassword());
                acc.setUserRole("ROLE_USER");
                acc.setActive(Boolean.TRUE);
                s.save(acc);

                user.setAccountId(acc);
                s.save(user);
            } else {
                s.update(u);
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
        User u = s.get(User.class, id);
        u.setUsername(u.getAccountId().getUsername());
        u.setPassword(u.getAccountId().getPassword());
        u.setConfirmPassword(u.getAccountId().getPassword());
        return u;
    }

    @Override
    public boolean deleteUser(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        try {
            User u = this.getUserById(id);
            Account a = this.accRepo.getAccountById(u.getAccountId().getId());
            s.delete(u);
            s.delete(a);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public User getUserByAccId(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("From User Where account_id=:un");
        q.setParameter("un", id);

        return (User) q.getSingleResult();
    }

    @Override
    public boolean updateUser(User user) {
        Session s = this.factory.getObject().getCurrentSession();
        try {
            s.update(user);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }
}
