/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.formatters;

import com.htran.pojo.Location;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Admin
 */
public class LocationFormatter implements Formatter<Location>{

    @Override
    public String print(Location location, Locale locale) {
        return String.valueOf(location.getId());
    }

    @Override
    public Location parse(String locationId, Locale locale) throws ParseException {
         return new Location(Integer.parseInt(locationId));
    }
    
    
}
