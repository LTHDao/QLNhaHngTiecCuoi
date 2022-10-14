package com.nhtc.pojo;

import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.SanhCuoiStore;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-10-13T22:10:13")
@StaticMetamodel(Sanhcuoi.class)
public class Sanhcuoi_ { 

    public static volatile SingularAttribute<Sanhcuoi, Long> giaToiThieu;
    public static volatile SingularAttribute<Sanhcuoi, String> hinhAnh;
    public static volatile SingularAttribute<Sanhcuoi, String> tenSanh;
    public static volatile SetAttribute<Sanhcuoi, Dondattiec> dondattiecSet;
    public static volatile SetAttribute<Sanhcuoi, SanhCuoiStore> sanhCuoiStoreSet;
    public static volatile SingularAttribute<Sanhcuoi, Integer> idSanhCuoi;
    public static volatile SingularAttribute<Sanhcuoi, Integer> soLuongBan;
    public static volatile SingularAttribute<Sanhcuoi, Double> dienTich;
    public static volatile SingularAttribute<Sanhcuoi, String> moTa;

}