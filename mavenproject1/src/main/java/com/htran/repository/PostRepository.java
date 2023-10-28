/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.repository;

import com.htran.pojo.Post;
import java.util.List;
import java.util.Map;

/**
 *
 * @author Admin
 */
public interface PostRepository {
    List<Post> getPosts(Map<String, String> params);
    List<Post> getPostByUserId(int id);
    boolean addPost(Post p);
    boolean deletePost(int id);
    Post getPostById(int id);
}
