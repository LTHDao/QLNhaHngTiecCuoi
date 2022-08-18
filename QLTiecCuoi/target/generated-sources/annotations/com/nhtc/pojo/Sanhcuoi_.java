package com.nhtc.pojo;

import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.Loaisanh;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-18T13:12:41")
@StaticMetamodel(Sanhcuoi.class)
public class Sanhcuoi_ { 

    public static volatile SingularAttribute<Sanhcuoi, Float> giaToiThieu;
    public static volatile SingularAttribute<Sanhcuoi, String> tenSanh;
    public static volatile SetAttribute<Sanhcuoi, Dondattiec> dondattiecSet;
    public static volatile SingularAttribute<Sanhcuoi, Integer> idSanhCuoi;
    public static volatile SingularAttribute<Sanhcuoi, Loaisanh> loaiSanhID;
    public static volatile SingularAttribute<Sanhcuoi, String> moTa;
    public static volatile SingularAttribute<Sanhcuoi, String> tìnhTrangSanh;

}