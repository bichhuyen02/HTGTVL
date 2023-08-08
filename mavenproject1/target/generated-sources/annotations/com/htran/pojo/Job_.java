package com.htran.pojo;

import com.htran.pojo.CategoryJob;
import com.htran.pojo.Company;
import com.htran.pojo.Location;
import com.htran.pojo.Notifi;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-08-08T12:09:10")
@StaticMetamodel(Job.class)
public class Job_ { 

    public static volatile SingularAttribute<Job, String> address;
    public static volatile SingularAttribute<Job, String> jobNature;
    public static volatile SetAttribute<Job, CategoryJob> categoryJobSet;
    public static volatile SingularAttribute<Job, Date> outOffTime;
    public static volatile SingularAttribute<Job, String> description;
    public static volatile SingularAttribute<Job, String> requirement;
    public static volatile SingularAttribute<Job, String> title;
    public static volatile SingularAttribute<Job, String> salary;
    public static volatile SetAttribute<Job, Notifi> notifiSet;
    public static volatile SingularAttribute<Job, Company> companyId;
    public static volatile SingularAttribute<Job, Date> createTime;
    public static volatile SingularAttribute<Job, Location> locationId;
    public static volatile SingularAttribute<Job, Integer> id;

}