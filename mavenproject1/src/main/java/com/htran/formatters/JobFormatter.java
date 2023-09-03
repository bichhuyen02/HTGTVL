/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.formatters;

import com.htran.pojo.Job;
import java.text.ParseException;
import java.util.Locale;
import org.springframework.format.Formatter;

/**
 *
 * @author Admin
 */
public class JobFormatter implements Formatter<Job>{

    @Override
    public String print(Job job, Locale locale) {
        return String.valueOf(job.getId());
    }

    @Override
    public Job parse(String jobId, Locale locale) throws ParseException {
        return new Job(Integer.parseInt(jobId));
    }
    
}
