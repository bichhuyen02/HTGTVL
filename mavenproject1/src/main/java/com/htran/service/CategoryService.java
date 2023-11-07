/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.htran.service;

import com.htran.pojo.Category;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ACER
 */
public interface CategoryService {

    List<Category> getCategories(Map<String, String> params);

    boolean addOrUpdateCategory(Category c);

    Category getCategoryById(int id);

    boolean deleteCategory(int id);

    boolean getCategoryByName(String name);
}
