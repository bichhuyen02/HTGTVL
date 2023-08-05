package com.htran.pojo;

import com.htran.pojo.Job;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-08-04T18:34:39")
@StaticMetamodel(Company.class)
public class Company_ { 

    public static volatile SingularAttribute<Company, String> image;
    public static volatile SingularAttribute<Company, String> linkCompany;
    public static volatile SingularAttribute<Company, String> name;
    public static volatile SingularAttribute<Company, Integer> id;
    public static volatile SetAttribute<Company, Job> jobSet;

}