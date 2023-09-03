/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Position;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Admin
 */
public interface PositionRepository {
    List<Position> getPositions(Map<String, String> params);
    Position getPositionById(int id);
}
