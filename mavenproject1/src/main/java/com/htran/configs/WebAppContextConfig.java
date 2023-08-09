/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.configs;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;


/**
 *
 * @author HUYEN TRAN
 */
@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages={
    "com.htran.controllers",
    "com.htran.repository",
    "com.htran.service"
})
public class WebAppContextConfig implements WebMvcConfigurer{
    
    @Override
    public void configureDefaultServletHandling(DefaultServletHandlerConfigurer configurer) {
        configurer.enable();       
    }     
    
     @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/***").addResourceLocations("/resources/css/");
        registry.addResourceHandler("/js/***").addResourceLocations("/resources/js/");
    }
    
    
//   @Bean
//   public InternalResourceViewResolver internalResourceViewResolver(){
//       InternalResourceViewResolver r = new InternalResourceViewResolver() ;
//       r.setViewClass(JstlView.class);
//       r.setPrefix("/WEB-INF/pages/");
//       r.setSuffix(".jsp");
//       return r ;
//   }
   
    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver resolver
                = new CommonsMultipartResolver();
        resolver.setDefaultEncoding("UTF-8");
        return resolver;
    }
    
//   @Bean
//    public Cloudinary cloudinary() {
//        Cloudinary cloudinary
//                = new Cloudinary(ObjectUtils.asMap(
//                        "cloud_name", this.env.getProperty("cloudinary.cloud_name"),
//                        "api_key", this.env.getProperty("cloudinary.api_key"),
//                        "api_secret", this.env.getProperty("cloudinary.api_secret"),
//                        "secure", true));
//        return cloudinary;
//    }
   
}