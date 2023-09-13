/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Category;
import com.htran.pojo.Company;
import com.htran.pojo.Job;
import com.htran.repository.JobRepository;
import com.htran.service.JobService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
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

    @Autowired
    private SimpleDateFormat simpleDateFormat;

    @Override
    public List<Job> getJobs(Map<String, String> params) {
        return this.jobRepo.getJobs(params);
    }

    @Override
    public int countJob() {
        return this.jobRepo.countJob();
    }

    @Override
    public Job getJobById(int id) {
        return this.jobRepo.getJobById(id);
    }

    @Override
    public boolean addOrUpdateJob(Job job) {
        Date currentDate = new Date();
        if (currentDate.compareTo(job.getOutOffTime()) < 0) {
            try {
                job.setCreateTime(this.simpleDateFormat
                        .parse(this.simpleDateFormat.format(currentDate)));
            } catch (ParseException ex) {
                Logger.getLogger(JobServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return this.jobRepo.addOrUpdateJob(job);
    }

    @Override
    public boolean deleteJob(int id) {
        return this.jobRepo.deleteJob(id);
    }

    @Override
    public List<Job> getJobsByComId(Company com) {
        return this.jobRepo.getJobsByComId(com);
    }

    @Override
    public List<Job> getJobsByCateId(Category cate) {
        return this.jobRepo.getJobsByCateId(cate);
    }

}
