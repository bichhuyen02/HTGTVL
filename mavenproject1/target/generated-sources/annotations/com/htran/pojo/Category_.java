package com.htran.pojo;

import com.htran.pojo.CategoryJob;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-08-04T18:34:39")
@StaticMetamodel(Category.class)
public class Category_ { 

    public static volatile SetAttribute<Category, CategoryJob> categoryJobSet;
    public static volatile SingularAttribute<Category, String> name;
    public static volatile SingularAttribute<Category, String> description;
    public static volatile SingularAttribute<Category, Integer> id;

}