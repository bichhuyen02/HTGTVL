/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.service;

import com.htran.pojo.Location;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ACER
 */
public interface LocationService {

    List<Location> getLocations(Map<String, String> params);

    boolean addOrUpdateLocation(Location lctn);

    Location getLocationById(int id);

    boolean deleteLocation(int id);
    
    boolean getLocationByName(String name);
}
