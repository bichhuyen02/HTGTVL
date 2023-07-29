package com.htran.pojo;

import com.htran.pojo.Comment;
import com.htran.pojo.Job;
import com.htran.pojo.Rating;
import com.htran.pojo.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.12.v20230209-rNA", date="2023-07-29T11:54:53")
@StaticMetamodel(Notifi.class)
public class Notifi_ { 

    public static volatile SingularAttribute<Notifi, Job> jobId;
    public static volatile SetAttribute<Notifi, Comment> commentSet;
    public static volatile SingularAttribute<Notifi, Integer> id;
    public static volatile SetAttribute<Notifi, Rating> ratingSet;
    public static volatile SingularAttribute<Notifi, User> userId;

}