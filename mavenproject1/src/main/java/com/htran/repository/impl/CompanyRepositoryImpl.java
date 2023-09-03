/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.repository.impl;

import com.htran.pojo.Account;
import com.htran.pojo.Company;
import com.htran.repository.AccountRepository;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.htran.repository.CompanyRepository;
import java.util.ArrayList;
import javax.persistence.criteria.Predicate;
import org.hibernate.HibernateException;
import org.springframework.context.annotation.PropertySource;

/**
 *
 * @author ACER
 */
@PropertySource("classpath:configs.properties")
@Repository
@Transactional
public class CompanyRepositoryImpl implements CompanyRepository {

    @Autowired
    private LocalSessionFactoryBean factory;
    
    @Autowired
    private AccountRepository accRepo;

    @Override
    public List<Company> getCompanies(Map<String, String> params) {
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Company> q = b.createQuery(Company.class);
        Root root = q.from(Company.class);
        q.select(root);

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();

            String kw = params.get("kw");
            if (kw != null && !kw.isEmpty()) {
                predicates.add(b.like(root.get("name"), String.format("%%%s%%", kw)));
            }

            String accId = params.get("accId");
            if (accId != null && !accId.isEmpty()) {
                predicates.add(b.equal(root.get("accountId"), Integer.parseInt(accId)));
            }

            q.where(predicates.toArray(Predicate[]::new));
        }
        
        q.orderBy(b.desc(root.get("id")));

        Query query = s.createQuery(q);
        return query.getResultList();
    }

    @Override
    public boolean addOrUpdateCompany(Company c) {
        Session s = this.factory.getObject().getCurrentSession();
        try {
            if (c.getId() == null) {
                Account acc = new Account();
                acc.setUsername(c.getUsername());
                acc.setPassword(c.getPassword());
                acc.setUserRole("ROLE_EMP");
                acc.setActive(Boolean.FALSE);
                s.save(acc);
                
                c.setAccountId(acc);
                s.save(c);
            } else {
                s.update(c);
                Account acc = new Account();
                acc = this.accRepo.getAccountById(c.getAccountId().getId());
                acc.setUsername(c.getUsername());
                acc.setPassword(c.getPassword());
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
    public Company getCompanyById(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        return s.get(Company.class, id);
    }
    
    @Override
    public boolean deleteCompany(int id) {
       Session s = this.factory.getObject().getCurrentSession();
      try {
            Company c = this.getCompanyById(id);
            s.delete(c);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public boolean UpdateActive(int id) {
        Session s = this.factory.getObject().getCurrentSession();
        Company company = this.getCompanyById(id);
        try {
            Account u = this.accRepo.getAccountById(company.getAccountId().getId());
            u.setActive(Boolean.TRUE);
            s.update(u);
            return true;
        } catch (HibernateException ex) {
            ex.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Company> getCompaniesByAccIdT() {
        List<Company> c = new ArrayList<>();
        List<Account> acc = this.accRepo.getAccountByActiveTrue();
        
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Company> q = b.createQuery(Company.class);
        Root root = q.from(Company.class);
        q.select(root);
        
        for (Account a : acc) {
            Predicate predicates = b.equal(root.get("accountId"), a.getId());
            q.where(predicates);
            
            q.orderBy(b.desc(root.get("id")));

            Query query = s.createQuery(q);
            c.addAll(query.getResultList());
        }     
        return c;
    }

    @Override
    public List<Company> getCompaniesByAccIdF() {
        List<Company> c = new ArrayList<>();
        List<Account> acc = this.accRepo.getAccountByActiveFalse();
        
        Session s = this.factory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<Company> q = b.createQuery(Company.class);
        Root root = q.from(Company.class);
        q.select(root);
        
        for (Account a : acc) {
            Predicate predicates = b.equal(root.get("accountId"), a.getId());
            q.where(predicates);
            
            q.orderBy(b.desc(root.get("id")));

            Query query = s.createQuery(q);
            c.addAll(query.getResultList());
        }     
        return c;
    }

}
