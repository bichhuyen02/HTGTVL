/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.htran.configs;

import com.htran.formatters.AccountFormatter;
import com.htran.formatters.CategoryFormatter;
import com.htran.formatters.CompanyFormatter;
import com.htran.formatters.JobFormatter;
import com.htran.formatters.LocationFormatter;
import com.htran.formatters.PositionFormatter;
import com.htran.formatters.UserFormatter;
import com.htran.pojo.Position;
import java.util.HashSet;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.core.env.Environment;
import org.springframework.format.FormatterRegistry;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.Validator;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

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
    "com.htran.service",
    "com.htran.formatters",
    "com.htran.handlers"
})
@PropertySource("classpath:configs.properties")
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
    
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addFormatter(new CategoryFormatter());
        registry.addFormatter(new LocationFormatter());
        registry.addFormatter(new CompanyFormatter());
        registry.addFormatter(new UserFormatter());
        registry.addFormatter(new JobFormatter());
        registry.addFormatter(new PositionFormatter());
        registry.addFormatter(new AccountFormatter());
    }
    
//   @Bean
//   public InternalResourceViewResolver internalResourceViewResolver(){
//       InternalResourceViewResolver r = new InternalResourceViewResolver() ;
//       r.setViewClass(JstlView.class);
//       r.setPrefix("/WEB-INF/pages/");
//       r.setSuffix(".jsp");
//       return r ;
//   }
   
//    @Bean
//    public CommonsMultipartResolver multipartResolver() {
//        CommonsMultipartResolver resolver
//                = new CommonsMultipartResolver();
//        resolver.setDefaultEncoding("UTF-8");
//        return resolver;
//    }
   
    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource m = new ResourceBundleMessageSource();
        m.setBasenames("messages");

        return m;
    }

  @Bean(name = "validator")
    public LocalValidatorFactoryBean validator() {
        LocalValidatorFactoryBean bean
                = new LocalValidatorFactoryBean();
        bean.setValidationMessageSource(messageSource());
        return bean;
    }

    @Override
    public Validator getValidator() {
        return validator();
    }
}