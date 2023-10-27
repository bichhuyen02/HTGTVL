/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Account;
import com.htran.pojo.Company;
import com.htran.pojo.User;
import com.htran.repository.AccountRepository;
import com.htran.repository.CompanyRepository;
import com.htran.repository.UserRepository;
import java.util.List;
import javax.persistence.NoResultException;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
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
public class AccountRepositoryImpl implements AccountRepository {

    @Autowired
    private LocalSessionFactoryBean factory;

    @Autowired
    private UserRepository userRepo;

    @Autowired
    private CompanyRepository compaRepo;

    @Autowired
    private BCryptPasswordEncoder passEncoder;

    @Override
    public Account getAccountByUsername(String username) {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("From Account Where username=:un");
        q.setParameter("un", username);

        String role1 = "ROLE_EMP";
        String role2 = "ROLE_USER";

        Account acc = (Account) q.getSingleResult();
        if (acc.getUserRole().equals(role1)) {
            Company c = this.compaRepo.getCompanyByAccId(acc.getId());
            acc.setuId(c.getId());
            acc.setName(c.getName());
            acc.setMail(c.getMail());
            acc.setPhone(c.getPhone());
            acc.setDate(c.getDateOfIncorporation());
            acc.setAvatar(c.getImage());
        }
        if (acc.getUserRole().equals(role2)) {
            User u = this.userRepo.getUserByAccId(acc.getId());
            acc.setuId(u.getId());
            acc.setName(u.getName());
            acc.setMail(u.getMail());
            acc.setPhone(u.getPhone());
            acc.setDate(u.getBirthDate());
            acc.setAvatar(u.getAvatar());
            acc.setGender(u.getGender());
            acc.setExperience(u.getExperience());
            acc.setMajors(u.getMajors());
            acc.setLevel(u.getLevel());
        }
        return acc;
    }

    @Override
    public List<Account> getAccountByActiveTrue() {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Account> q = b.createQuery(Account.class);
        Root root = q.from(Account.class);
        q.select(root);
        Predicate predicates = b.equal(root.get("active"), true);

        q.where(predicates);

        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public List<Account> getAccountByActiveFalse() {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Account> q = b.createQuery(Account.class);
        Root root = q.from(Account.class);
        q.select(root);
        Predicate predicates = b.equal(root.get("active"), false);

        q.where(predicates);

        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public Account getAccountById(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        return s.get(Account.class, id);
    }

    @Override
    public boolean authAccount(String username, String password) {
        Account acc = this.getAccountByUsername(username);
        return this.passEncoder.matches(password, acc.getPassword());
    }

    @Override
    public boolean getAccountByUsern(String username) {
        Session s = this.factory.getObject().getCurrentSession();
        Query q = s.createQuery("From Account Where username=:un");
        try {
            q.setParameter("un", username);
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
