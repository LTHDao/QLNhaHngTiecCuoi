package com.nhtc.pojo;

import com.nhtc.pojo.Catochuc;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Khachhang;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.pojo.Sanhcuoi;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SetAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.7.9.v20210604-rNA", date="2022-08-18T13:12:41")
@StaticMetamodel(Dondattiec.class)
public class Dondattiec_ { 

    public static volatile SingularAttribute<Dondattiec, Date> ngayToChuc;
    public static volatile SetAttribute<Dondattiec, Phieudatmon> phieudatmonSet;
    public static volatile SingularAttribute<Dondattiec, Sanhcuoi> idSanh;
    public static volatile SingularAttribute<Dondattiec, String> chitTiet;
    public static volatile SetAttribute<Dondattiec, Phieudatdichvu> phieudatdichvuSet;
    public static volatile SingularAttribute<Dondattiec, Integer> idDonDatTiec;
    public static volatile SingularAttribute<Dondattiec, Hoadon> hoadon;
    public static volatile SingularAttribute<Dondattiec, Khachhang> idKhachHang;
    public static volatile SingularAttribute<Dondattiec, Catochuc> idCaToChuc;

}