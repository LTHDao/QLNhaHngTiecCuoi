package com.nhtc.pojo;

import com.nhtc.pojo.PhanHoi;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-10-13T22:10:13")
@StaticMetamodel(User.class)
public class User_ { 

    public static volatile SingularAttribute<User, String> diaChi;
    public static volatile SingularAttribute<User, String> sdt;
    public static volatile SingularAttribute<User, String> password;
    public static volatile SingularAttribute<User, Date> ngaySinh;
    public static volatile SingularAttribute<User, String> gioiTinh;
    public static volatile SingularAttribute<User, String> avatar;
    public static volatile SingularAttribute<User, Integer> id;
    public static volatile SingularAttribute<User, String> hoTen;
    public static volatile SingularAttribute<User, String> userRole;
    public static volatile SetAttribute<User, PhanHoi> phanHoiSet;
    public static volatile SingularAttribute<User, String> email;
    public static volatile SingularAttribute<User, String> username;

}