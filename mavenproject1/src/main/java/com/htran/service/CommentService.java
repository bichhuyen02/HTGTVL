/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.service;

import com.htran.pojo.Comment;
import com.htran.pojo.Company;
import java.util.List;

/**
 *
 * @author Admin
 */
public interface CommentService {
  List<Comment> getCommentsbyCompanyId(Company com);
  boolean addComment(Comment cmt);
}
