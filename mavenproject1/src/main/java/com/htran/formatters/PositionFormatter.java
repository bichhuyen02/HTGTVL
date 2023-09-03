/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.formatters;

import com.htran.pojo.Position;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Admin
 */
public class PositionFormatter implements Formatter<Position>{

    @Override
    public String print(Position position, Locale locale) {
        return String.valueOf(position.getId());
    }

    @Override
    public Position parse(String positionId, Locale locale) throws ParseException {
        return new Position(Integer.parseInt(positionId));
    }
    
}
