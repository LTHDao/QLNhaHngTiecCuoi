package com.nhtc.pojo;

import com.nhtc.pojo.User;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-18T13:12:41")
@StaticMetamodel(Userrole.class)
public class Userrole_ { 

    public static volatile SingularAttribute<Userrole, String> role;
    public static volatile SingularAttribute<Userrole, Integer> id;
    public static volatile SetAttribute<Userrole, User> userSet;

}