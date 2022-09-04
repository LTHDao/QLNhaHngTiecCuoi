package com.nhtc.pojo;

import com.nhtc.pojo.Catochuc;
import com.nhtc.pojo.Khachhang;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-09-04T15:22:09")
@StaticMetamodel(Dondattiec.class)
public class Dondattiec_ { 

    public static volatile SingularAttribute<Dondattiec, Date> ngayToChuc;
    public static volatile SingularAttribute<Dondattiec, Integer> idSanh;
    public static volatile SingularAttribute<Dondattiec, String> chitTiet;
    public static volatile SingularAttribute<Dondattiec, Integer> idDonDatTiec;
    public static volatile SingularAttribute<Dondattiec, Khachhang> idKhachHang;
    public static volatile SingularAttribute<Dondattiec, Catochuc> idCaToChuc;

}