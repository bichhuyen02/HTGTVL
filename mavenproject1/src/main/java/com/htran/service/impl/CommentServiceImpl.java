/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Comment;
import com.htran.pojo.Company;
import com.htran.repository.CommentRepository;
import com.htran.service.CommentService;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Admin
 */
@Service
public class CommentServiceImpl implements CommentService {

    @Autowired
    private CommentRepository cmtRepo;

    @Autowired
    private SimpleDateFormat simpleDateFormat;

    @Override
    public List<Comment> getCommentsbyCompanyId(Company com) {
        return this.cmtRepo.getCommentsbyCompanyId(com);
    }

    @Override
    public boolean addComment(Comment cmt) {
        Date currentDate = new Date();
        try {
            
            cmt.setCreateTime(this.simpleDateFormat
                    .parse(this.simpleDateFormat.format(currentDate)));
        } catch (ParseException ex) {
            Logger.getLogger(CommentServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return this.cmtRepo.addComment(cmt);
    }

}
