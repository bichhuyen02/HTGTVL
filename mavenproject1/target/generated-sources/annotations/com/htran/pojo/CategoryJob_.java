package com.htran.pojo;

import com.htran.pojo.Category;
import com.htran.pojo.Job;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-07-29T11:54:53")
@StaticMetamodel(CategoryJob.class)
public class CategoryJob_ { 

    public static volatile SingularAttribute<CategoryJob, Job> jobId;
    public static volatile SingularAttribute<CategoryJob, Integer> id;
    public static volatile SingularAttribute<CategoryJob, Category> categoryId;

}