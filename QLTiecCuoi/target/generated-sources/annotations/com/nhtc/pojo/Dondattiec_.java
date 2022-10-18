package com.nhtc.pojo;

import com.nhtc.pojo.Catochuc;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Khachhang;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.pojo.SanhCuoiStore;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-10-18T23:01:55")
@StaticMetamodel(Dondattiec.class)
public class Dondattiec_ { 

    public static volatile SingularAttribute<Dondattiec, Date> ngayToChuc;
    public static volatile SetAttribute<Dondattiec, Phieudatmon> phieudatmonSet;
    public static volatile SingularAttribute<Dondattiec, SanhCuoiStore> idSanh;
    public static volatile SingularAttribute<Dondattiec, String> chitTiet;
    public static volatile SetAttribute<Dondattiec, Phieudatdichvu> phieudatdichvuSet;
    public static volatile SingularAttribute<Dondattiec, Integer> idDonDatTiec;
    public static volatile SetAttribute<Dondattiec, Hoadon> hoadonSet;
    public static volatile SingularAttribute<Dondattiec, Date> ngayDatHen;
    public static volatile SingularAttribute<Dondattiec, Integer> soBan;
    public static volatile SingularAttribute<Dondattiec, Khachhang> idKhachHang;
    public static volatile SingularAttribute<Dondattiec, Catochuc> idCaToChuc;

}