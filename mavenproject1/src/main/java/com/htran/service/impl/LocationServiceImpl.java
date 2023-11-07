/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Location;
import com.htran.repository.LocationRepository;
import com.htran.service.LocationService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ACER
 */
@Service
public class LocationServiceImpl implements LocationService{

    @Autowired
    private LocationRepository locationRepo;
        
    @Override
    public List<Location> getLocations(Map<String, String> params) {
        return this.locationRepo.getLocations(params);
    }

    @Override
    public boolean addOrUpdateLocation(Location lctn) {
         return this.locationRepo.addOrUpdateLocation(lctn);
    }

    @Override
    public Location getLocationById(int id) {
       return this.locationRepo.getLocationById(id);
    }

    @Override
    public boolean deleteLocation(int id) {
       return this.locationRepo.deleteLocation(id);
    }

    @Override
    public boolean getLocationByName(String name) {
        return this.locationRepo.getLocationByName(name);
    }
    
}
