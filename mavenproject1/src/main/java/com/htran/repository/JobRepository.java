/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Category;
import com.htran.pojo.Company;
import com.htran.pojo.Job;
import java.util.List;
import java.util.Map;

/**
 *
 * @author HUYEN TRAN
 */
public interface JobRepository {
    List<Job> getJobs(Map<String, String> params);
    List<Job> getJobsByComId(Company com);
    int countJob();
    boolean addOrUpdateJob(Job j);
    boolean deleteJob(int id);
    Job getJobById(int id);
    List<Job> getJobsByCateId(Category cate);
}


    
