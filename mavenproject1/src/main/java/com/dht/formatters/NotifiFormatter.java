/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dht.formatters;

import com.htran.pojo.Notifi;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Admin
 */
public class NotifiFormatter implements Formatter<Notifi>{

    @Override
    public String print(Notifi notifi, Locale locale) {
        return String.valueOf(notifi.getId());
    }

    @Override
    public Notifi parse(String notifiId, Locale locale) throws ParseException {
        return new Notifi(Integer.parseInt(notifiId));
    }
    
}
