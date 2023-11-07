/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;

import com.htran.pojo.Post;
import com.htran.repository.PostRepository;
import com.htran.service.PostService;
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
 * @author Admin
 */
@Service
public class PostServiceImpl implements PostService{
    
    @Autowired
    private PostRepository postRepo;
    
    @Autowired
    private SimpleDateFormat simpleDateFormat;
    
    @Override
    public List<Post> getPosts(Map<String, String> params) {
        return this.postRepo.getPosts(params);
    }

    @Override
    public List<Post> getPostByUserId(int id) {
        return this.postRepo.getPostByUserId(id);
    }

    @Override
    public boolean addPost(Post p) {
         Date currentDate = new Date();
        try {
            p.setCreateTime(this.simpleDateFormat
                    .parse(this.simpleDateFormat.format(currentDate)));
        } catch (ParseException ex) {
            Logger.getLogger(PostServiceImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
         return this.postRepo.addPost(p);
    }

    @Override
    public boolean deletePost(int id) {
         return this.deletePost(id);
    }

    @Override
    public Post getPostById(int id) {
        return this.postRepo.getPostById(id);
    }
    
}
