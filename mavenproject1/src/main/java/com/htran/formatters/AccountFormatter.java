/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.formatters;

import com.htran.pojo.Account;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Admin
 */
public class AccountFormatter implements Formatter<Account>{

    @Override
    public String print(Account acc, Locale locale) {
       return String.valueOf(acc.getId());
    }

    @Override
    public Account parse(String accId, Locale locale) throws ParseException {
        return new Account(Integer.parseInt(accId));
    }
    
}
