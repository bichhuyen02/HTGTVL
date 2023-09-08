/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Category;
import com.htran.pojo.Job;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface StatsRepository {
    List<Object[]> statsMajor();
    List<Object[]> statsRevenue(int year);
    List<Object[]> quarterStats(int quarter, int year);
}
