package com.nhtc.pojo;

import com.nhtc.pojo.DichVuStore;
import com.nhtc.pojo.Loaidichvu;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-10-13T22:10:13")
@StaticMetamodel(Dichvu.class)
public class Dichvu_ { 

    public static volatile SingularAttribute<Dichvu, String> tenDichVu;
    public static volatile SingularAttribute<Dichvu, String> hinhAnh;
    public static volatile SingularAttribute<Dichvu, Loaidichvu> loaiDichVu;
    public static volatile SetAttribute<Dichvu, DichVuStore> dichVuStoreSet;
    public static volatile SingularAttribute<Dichvu, String> chiTiet;
    public static volatile SingularAttribute<Dichvu, Long> giaDichVu;
    public static volatile SingularAttribute<Dichvu, Integer> idDichVu;

}