/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.Hoadon;
import com.nhtc.pojo.Monan;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.nhtc.repository.ThongKeRepository;

/**
 *
 * @author hdao2
 */
@Repository
@Transactional
public class ThongKeRepositoryImpl implements ThongKeRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Object[]> MatDoThang(Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root rootD = q.from(Dondattiec.class);
        
        List<Predicate> predicate = new ArrayList<>();
//        b.equal(rootD, rootD)
        q.multiselect(b.function("MONTH", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")), b.count(rootD.get("idDonDatTiec")));
        
        if (fromDate != null) 
            predicate.add(b.greaterThanOrEqualTo(rootD.get("ngayToChuc"), fromDate));
        if (toDate != null) 
            predicate.add(b.lessThanOrEqualTo(rootD.get("ngayToChuc"), toDate));
        
        q.where(predicate.toArray(new Predicate[] {}));
        
        q.groupBy(b.function("MONTH", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")));
        
        q.orderBy(b.asc(b.function("YEAR", Integer.class, rootD.get("ngayToChuc"))), 
                b.asc(b.function("MONTH", Integer.class, rootD.get("ngayToChuc"))));
        
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }

    @Override
    public List<Object[]> MatDoQuy(Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root rootD = q.from(Dondattiec.class);
        
        List<Predicate> predicate = new ArrayList<>();
//        b.equal(rootD, rootD)
        q.multiselect(b.function("QUARTER", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")), b.count(rootD.get("idDonDatTiec")));
        
        if (fromDate != null) 
            predicate.add(b.greaterThanOrEqualTo(rootD.get("ngayToChuc"), fromDate));
        if (toDate != null) 
            predicate.add(b.lessThanOrEqualTo(rootD.get("ngayToChuc"), toDate));
        
        q.where(predicate.toArray(new Predicate[] {}));
        
        q.groupBy(b.function("QUARTER", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")));
        
        q.orderBy(b.asc(b.function("YEAR", Integer.class, rootD.get("ngayToChuc"))), 
                b.asc(b.function("QUARTER", Integer.class, rootD.get("ngayToChuc"))));
        
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }

    @Override
    public List<Object[]> MatDoNam(Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root rootD = q.from(Dondattiec.class);
        
        List<Predicate> predicate = new ArrayList<>();
        q.multiselect(b.function("YEAR", Integer.class, rootD.get("ngayToChuc")),
                b.count(rootD.get("idDonDatTiec")));
        
        if (fromDate != null) 
            predicate.add(b.greaterThanOrEqualTo(rootD.get("ngayToChuc"), fromDate));
        if (toDate != null) 
            predicate.add(b.lessThanOrEqualTo(rootD.get("ngayToChuc"), toDate));
        
        q.where(predicate.toArray(new Predicate[] {}));
        
        q.groupBy(b.function("YEAR", Integer.class, rootD.get("ngayToChuc")));
        
        q.orderBy(b.asc(b.function("YEAR", Integer.class, rootD.get("ngayToChuc"))));
        
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }

    @Override
    public List<Object[]> DoanhThuThang(Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root rootD = q.from(Dondattiec.class);
        Root rootH = q.from(Hoadon.class);
        List<Predicate> predicate = new ArrayList<>();
        predicate.add(b.equal(rootH.get("idTiecCuoi"), rootD.get("idDonDatTiec")));
        
        if (fromDate != null) 
            predicate.add(b.greaterThanOrEqualTo(rootD.get("ngayToChuc"), fromDate));
        if (toDate != null) 
            predicate.add(b.lessThanOrEqualTo(rootD.get("ngayToChuc"), toDate));
        
        q.multiselect(b.function("MONTH", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")),
                b.sum(rootH.get("tongGia")));
        
        q.where(predicate.toArray(new Predicate[] {}));
        
        q.groupBy(b.function("MONTH", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")));
        
        q.orderBy(b.asc(b.function("YEAR", Integer.class, rootD.get("ngayToChuc"))), 
                b.asc(b.function("MONTH", Integer.class, rootD.get("ngayToChuc"))));
        
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }

    @Override
    public List<Object[]> DoanhThuQuy(Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root rootD = q.from(Dondattiec.class);
        Root rootH = q.from(Hoadon.class);
        List<Predicate> predicate = new ArrayList<>();
        predicate.add(b.equal(rootH.get("idTiecCuoi"), rootD.get("idDonDatTiec")));
        
        if (fromDate != null) 
            predicate.add(b.greaterThanOrEqualTo(rootD.get("ngayToChuc"), fromDate));
        if (toDate != null) 
            predicate.add(b.lessThanOrEqualTo(rootD.get("ngayToChuc"), toDate));
        
        q.multiselect(b.function("QUARTER", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")),
                b.sum(rootH.get("tongGia")));
        
        q.where(predicate.toArray(new Predicate[] {}));
        
        q.groupBy(b.function("QUARTER", Integer.class, rootD.get("ngayToChuc")),
                b.function("YEAR", Integer.class, rootD.get("ngayToChuc")));
        
        q.orderBy(b.asc(b.function("YEAR", Integer.class, rootD.get("ngayToChuc"))), 
                b.asc(b.function("QUARTER", Integer.class, rootD.get("ngayToChuc"))));
        
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }

    @Override
    public List<Object[]> DoanhThuNam(Date fromDate, Date toDate) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> q = b.createQuery(Object[].class);
        
        Root rootD = q.from(Dondattiec.class);
        Root rootH = q.from(Hoadon.class);
        List<Predicate> predicate = new ArrayList<>();
        predicate.add(b.equal(rootH.get("idTiecCuoi"), rootD.get("idDonDatTiec")));
        
        if (fromDate != null) 
            predicate.add(b.greaterThanOrEqualTo(rootD.get("ngayToChuc"), fromDate));
        if (toDate != null) 
            predicate.add(b.lessThanOrEqualTo(rootD.get("ngayToChuc"), toDate));
        
        q.multiselect(b.function("YEAR", Integer.class, rootD.get("ngayToChuc")),
                b.sum(rootH.get("tongGia")));
        
        q.where(predicate.toArray(new Predicate[] {}));
        
        q.groupBy(b.function("YEAR", Integer.class, rootD.get("ngayToChuc")));
        
        q.orderBy(b.asc(b.function("YEAR", Integer.class, rootD.get("ngayToChuc"))));
        
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }
    
}
