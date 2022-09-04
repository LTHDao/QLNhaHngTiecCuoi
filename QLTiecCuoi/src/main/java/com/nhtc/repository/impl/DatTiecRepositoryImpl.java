/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Catochuc;
import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Khachhang;
import com.nhtc.pojo.Monan;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.repository.DatTiecRepository;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.Query;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author hdao2
 */
@Repository
@Transactional
public class DatTiecRepositoryImpl implements DatTiecRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public Khachhang addKhachHang(String tenKH, String sdt, String email) {
        Session s = this.sessionFactory.getObject().getCurrentSession();

        try {
            Khachhang k = new Khachhang();

            k.setTenKH(tenKH);
            k.setSdt(sdt);
            k.setEmail(email);

            s.save(k);

            return k;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public Hoadon addHoaDon(Dondattiec idDon, long tongTien) {
        Session s = this.sessionFactory.getObject().getCurrentSession();

        try {
            Hoadon h = new Hoadon();

            h.setTongGia(tongTien); //thiếu
            h.setIdTiecCuoi(idDon);

            s.save(h);

            return h;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public Catochuc getCaById(int id) {
        Session s = sessionFactory.getObject().getCurrentSession();

        return s.get(Catochuc.class, id);
    }

    @Override
    public Phieudatdichvu addPhieuDv(Dondattiec idDon, Dichvu dichVu) {
        Session s = this.sessionFactory.getObject().getCurrentSession();

        try {
            Phieudatdichvu dv = new Phieudatdichvu();
            dv.setIdDichVu(dichVu);
            dv.setIdTiecCuoi(idDon);

            s.save(dv);

            return dv;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public Phieudatmon addPhieuDatMon(Dondattiec idDon, Monan monAn) {
        Session s = this.sessionFactory.getObject().getCurrentSession();

        try {
            Phieudatmon p = new Phieudatmon();

            p.setIdMonAn(monAn);
            p.setIdTiecCuoi(idDon);

            s.save(p);

            return p;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public Dondattiec addDonDatTiec(Map<String, String> params, Sanhcuoi sanh,
            Date ngayToChuc) {
        Session s = this.sessionFactory.getObject().getCurrentSession();

        try {
            int idCaToChuc = 0 ;

            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
            String date = params.get("ngayToChuc");
            Date ngay = null;
            try {
                ngay = formatter.parse(date);
            } catch (ParseException ex) {
                Logger.getLogger(DatTiecRepositoryImpl.class.getName()).log(Level.SEVERE, null, ex);
            }

            Calendar c = Calendar.getInstance();
            c.setTime(ngay);
            int dayOfWeek = c.get(Calendar.DAY_OF_WEEK);
            int hourOfDay = c.get(Calendar.HOUR_OF_DAY);
            if ( (dayOfWeek != 1 && dayOfWeek != 7) && (hourOfDay >= 4 && hourOfDay < 16) ){
                idCaToChuc = 1;
            } else if ((dayOfWeek == 1 || dayOfWeek == 7) && (hourOfDay >= 4 && hourOfDay < 16)){
                idCaToChuc = 2;
            } else if ((dayOfWeek != 1 && dayOfWeek != 7) && (hourOfDay < 4 || hourOfDay >= 16)){
                idCaToChuc = 3;
            } else if ((dayOfWeek == 1 || dayOfWeek == 7) && (hourOfDay < 4 || hourOfDay >= 16)){
                idCaToChuc = 4;
            }
                

            String tenKH = params.get("tenKH");
            String sdt = params.get("sdtKH");
            String email = params.get("emailKH");
            int soBan = Integer.parseInt(params.get("soBan"));
            Khachhang k = this.addKhachHang(tenKH, sdt, email);
            s.save(k);

            Dondattiec d = new Dondattiec();
            d.setIdKhachHang(k);//
            d.setIdSanh(sanh);
            d.setIdCaToChuc(this.getCaById(idCaToChuc));
            d.setNgayToChuc(ngayToChuc);
            d.setChitTiet(params.get("chitTiet"));
            d.setSoBan(soBan);

            s.save(d);

            return d;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return null;

    }

    @Override
    public List<Khachhang> getKhachHang() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Khachhang");

        return q.getResultList();
    }

    @Override
    public List<Hoadon> getHoaDon() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Hoadon");

        return q.getResultList();
    }

    @Override
    public List<Dondattiec> getDonDatTiec() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Dondattiec");

        return q.getResultList();
    }

    @Override
    public Dondattiec getDonDatTiecById(int id) {
        Session s = sessionFactory.getObject().getCurrentSession();

        return s.get(Dondattiec.class, id);
    }

}
