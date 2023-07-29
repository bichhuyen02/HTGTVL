/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.service.impl;


import com.htran.pojo.Category;
import com.htran.repository.CategoryRepository;
import com.htran.service.CategoryService;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author ACER
 */
@Service
public class CategoryServiceImpl implements CategoryService{
    @Autowired
    private CategoryRepository cateRepo;

    @Override
    public List<Category> getCategories(Map<String, String> params) {
        return this.cateRepo.getCategories(params);
    }

    @Override
    public boolean addCategory(Category c) {
        return this.cateRepo.addCategory(c);
    }
}
