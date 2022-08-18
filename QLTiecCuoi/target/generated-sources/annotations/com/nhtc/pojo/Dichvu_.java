package com.nhtc.pojo;

import com.nhtc.pojo.Loaidichvu;
import com.nhtc.pojo.Phieudatdichvu;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-18T13:12:41")
@StaticMetamodel(Dichvu.class)
public class Dichvu_ { 

    public static volatile SingularAttribute<Dichvu, String> tenDichVu;
    public static volatile SingularAttribute<Dichvu, Loaidichvu> loaiDichVu;
    public static volatile SetAttribute<Dichvu, Phieudatdichvu> phieudatdichvuSet;
    public static volatile SingularAttribute<Dichvu, String> chiTiet;
    public static volatile SingularAttribute<Dichvu, Float> giaDichVu;
    public static volatile SingularAttribute<Dichvu, Integer> idDichVu;

}