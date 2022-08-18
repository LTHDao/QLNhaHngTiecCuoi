package com.nhtc.pojo;

import com.nhtc.pojo.Loaimon;
import com.nhtc.pojo.Phieudatmon;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-18T13:12:41")
@StaticMetamodel(Monan.class)
public class Monan_ { 

    public static volatile SetAttribute<Monan, Phieudatmon> phieudatmonSet;
    public static volatile SingularAttribute<Monan, Integer> id;
    public static volatile SingularAttribute<Monan, String> ten;
    public static volatile SingularAttribute<Monan, Float> gia;
    public static volatile SingularAttribute<Monan, Loaimon> idThucDon;

}