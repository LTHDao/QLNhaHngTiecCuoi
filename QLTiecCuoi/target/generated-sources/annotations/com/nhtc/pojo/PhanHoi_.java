package com.nhtc.pojo;

import com.nhtc.pojo.User;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-10-18T23:01:55")
@StaticMetamodel(PhanHoi.class)
public class PhanHoi_ { 

    public static volatile SingularAttribute<PhanHoi, Integer> id;
    public static volatile SingularAttribute<PhanHoi, String> noiDung;
    public static volatile SingularAttribute<PhanHoi, User> userId;
    public static volatile SingularAttribute<PhanHoi, Date> ngayPhanHoi;

}