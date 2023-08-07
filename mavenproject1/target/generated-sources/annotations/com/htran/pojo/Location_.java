package com.htran.pojo;

import com.htran.pojo.Job;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-08-08T00:06:14")
@StaticMetamodel(Location.class)
public class Location_ { 

    public static volatile SingularAttribute<Location, String> name;
    public static volatile SingularAttribute<Location, String> description;
    public static volatile SingularAttribute<Location, Integer> id;
    public static volatile SetAttribute<Location, Job> jobSet;

}