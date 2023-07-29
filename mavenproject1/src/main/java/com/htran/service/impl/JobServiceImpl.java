/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Job;
import com.htran.repository.JobRepository;
import com.htran.service.JobService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ACER
 */
@Service
public class JobServiceImpl implements JobService {

    @Autowired
    private JobRepository jobRepo;

    @Override
    public List<Job> getJobs(Map<String, String> params) {
        return this.jobRepo.getJobs(params);
    }

    @Override
    public int countJob() {
       return this.jobRepo.countJob();
    }

    @Override
    public boolean addOrUpdateJob(Job job) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

}
