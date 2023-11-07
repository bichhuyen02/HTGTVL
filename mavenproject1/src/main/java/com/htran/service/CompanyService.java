/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.service;

import com.htran.pojo.Company;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ACER
 */
public interface CompanyService {
     List<Company> getCompanies(Map<String, String> params);
     List<Company> getCompaniesByAccIdT();
     List<Company> getCompaniesByAccIdF();
     boolean addOrUpdateCompany(Company c);
     boolean UpdateActive(int id);
     Company getCompanyById(int id);
     Company getCompanyByAccId(int id);
     boolean deleteCompany(int id);
     int countCompany();
     boolean updateCompany(Company c);
}
