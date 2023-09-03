/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Position;
import com.htran.repository.PositionRepository;
import com.htran.service.PositionService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class PositionServiceImpl implements PositionService{
       
    @Autowired
    private PositionRepository posiRepo;
    
    @Override
    public List<Position> getPositions(Map<String, String> params) {
        return this.posiRepo.getPositions(params);
    }

    @Override
    public Position getPositionById(int id) {
        return this.posiRepo.getPositionById(id);
    }
    
}
