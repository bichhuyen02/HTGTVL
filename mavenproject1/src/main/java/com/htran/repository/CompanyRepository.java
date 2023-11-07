/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Account;
import com.htran.pojo.Company;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ACER
 */
public interface CompanyRepository {
     List<Company> getCompanies(Map<String, String> params);
     List<Company> getCompaniesByAccIdT();
     List<Company> getCompaniesByAccIdF();
     Company getCompanyByAccId(int id);
     int countCompany();
     boolean addOrUpdateCompany(Company c);
     boolean UpdateActive(int id);
     boolean deleteCompany(int id);
     Company getCompanyById(int id);
     boolean updateCompany(Company c);
}

