/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.formatters;

import com.htran.pojo.Company;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Admin
 */
public class CompanyFormatter implements Formatter<Company>{

    @Override
    public String print(Company company, Locale locale) {
        return String.valueOf(company.getId());
    }

    @Override
    public Company parse(String companyId, Locale locale) throws ParseException {
        return new Company(Integer.parseInt(companyId));
    }
    
}
