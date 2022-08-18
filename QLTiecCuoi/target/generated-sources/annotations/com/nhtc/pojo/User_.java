package com.nhtc.pojo;

import com.nhtc.pojo.Nhanvien;
import com.nhtc.pojo.Userrole;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-18T13:12:41")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, String> sdt;
    public static volatile SingularAttribute<User, Nhanvien> nhanvien;
    public static volatile SingularAttribute<User, Integer> id;
    public static volatile SingularAttribute<User, String> hoTen;
    public static volatile SingularAttribute<User, String> avatar;
    public static volatile SingularAttribute<User, Userrole> userRole;
    public static volatile SingularAttribute<User, String> email;
    public static volatile SingularAttribute<User, String> username;

}