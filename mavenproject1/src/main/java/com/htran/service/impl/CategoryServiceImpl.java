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
    public boolean addOrUpdateCategory(Category c) {
        return this.cateRepo.addOrUpdateCategory(c);
    }

    @Override
    public Category getCategoryById(int id) {
        return this.cateRepo.getCategoryById(id);
    }

    @Override
    public boolean deleteCategory(int id) {
        return this.cateRepo.deleteCategory(id);
    }

    @Override
    public boolean getCategoryByName(String name) {
        return this.cateRepo.getCategoryByName(name);
    }

    
}
