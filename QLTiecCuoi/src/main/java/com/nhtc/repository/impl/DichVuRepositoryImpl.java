/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.DichVuStore;
import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Loaidichvu;
import com.nhtc.pojo.Phieudatdichvu;
import com.nhtc.repository.DichVuRepository;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author hdao2
 */
@Repository
@Transactional
@PropertySource("classpath:messages.properties")
public class DichVuRepositoryImpl implements DichVuRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;

    @Override
    public List<Loaidichvu> getLoaiDichVu() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Loaidichvu");

        return q.getResultList();
    }

    @Override
    public Loaidichvu getLoaiDichVuByID(int loaiDichVuID) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Loaidichvu.class, loaiDichVuID);
    }

    @Override
    public List<Dichvu> getDichVu(Map<String, String> params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Dichvu> q = b.createQuery(Dichvu.class);
        Root root = q.from(Dichvu.class);
        q.select(root);

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            String kw = params.getOrDefault("kw", "");
            if (!kw.equals("")) {
                Predicate p = b.like(root.get("tenDichVu").as(String.class),
                        String.format("%%%s%%", kw));
                predicates.add(p);
            }
            String loaidichvuID = params.get("loaidichvuID");
            if (loaidichvuID != null) {
                Predicate p = b.equal(root.get("loaiDichVu"), Integer.parseInt(loaidichvuID));
                predicates.add(p);
            }

            q.where(predicates.toArray(new Predicate[]{}));

        }
        Query query = session.createQuery(q);

        if (page > 0) {
            int max = Integer.parseInt(env.getProperty("page.size").toString());
            query.setMaxResults(max);
            query.setFirstResult((page - 1) * max);
        }
        return query.getResultList();
    }

    @Override
    public long countDichVu(String params) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder cb = s.getCriteriaBuilder();
        CriteriaQuery<Long> cq = cb.createQuery(Long.class);

        Root r = cq.from(Dichvu.class);
        cq.select(cb.count(r));

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            Predicate p = cb.equal(r.get("loaiDichVu"), Integer.parseInt(params));
            predicates.add(p);
            cq.where(predicates.toArray(new Predicate[]{}));
        }

        Query q = s.createQuery(cq);
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public boolean addDichVu(Dichvu dichvu) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(dichvu);
            DichVuStore dvs = new DichVuStore();
            dvs.setTenDichVu(dichvu.getTenDichVu());
            dvs.setChiTiet(dichvu.getChiTiet());
            dvs.setGiaDichVu(dichvu.getGiaDichVu());
            dvs.setHinhAnh(dichvu.getHinhAnh());
            dvs.setIdDichVuChinh(dichvu);
            dvs.setLoaiDichVu(dichvu.getLoaiDichVu().getIdloaidichvu());
            session.save(dvs);

            System.err.println("Them Thanh cong!!");
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteDichVu(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Dichvu dv = session.get(Dichvu.class, id);
            session.delete(dv);
            return true;
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }
    
    @Override
    public boolean updateDichVu(Dichvu dichvu) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Dichvu dv = session.get(Dichvu.class, dichvu.getIdDichVu());
            dv.setTenDichVu(dichvu.getTenDichVu());
            dv.setChiTiet(dichvu.getChiTiet());
            dv.setGiaDichVu(dichvu.getGiaDichVu());


            session.update(dv);
            
            DichVuStore dvs = new DichVuStore();
            dvs.setTenDichVu(dichvu.getTenDichVu());
            dvs.setChiTiet(dichvu.getChiTiet());
            dvs.setGiaDichVu(dichvu.getGiaDichVu());
            dvs.setHinhAnh(dv.getHinhAnh());
            dvs.setIdDichVuChinh(dv);
            dvs.setLoaiDichVu(dv.getLoaiDichVu().getIdloaidichvu());
            session.save(dvs);
            
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }
    
    @Override
    public boolean updateDichVuStore(int idDichVu) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            List<DichVuStore> listDichVuStore = getStoreByDichvu(idDichVu);
            for (DichVuStore dichVuStore : listDichVuStore) {
                dichVuStore.setIdDichVuChinh(null);
                session.update(dichVuStore);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public Dichvu getDichVuById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Dichvu.class, id);
    }

    @Override
    public List<Phieudatdichvu> getPhieuDatDichVu() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Phieudatdichvu");

        return q.getResultList();
    }

    @Override
    public List<DichVuStore> getStoreByDichvu(int dichvu) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<DichVuStore> q = b.createQuery(DichVuStore.class);
        Root rootS = q.from(DichVuStore.class);

        List<Predicate> predicates = new ArrayList<>();
        Predicate p = b.equal(rootS.get("idDichVuChinh"), dichvu);
        predicates.add(p);
        q.where(predicates.toArray(new Predicate[]{}));
        q.orderBy(b.desc(rootS.get("id")));

        q.select(rootS);
        
        Query query = session.createQuery(q);
        
        return query.getResultList();
    }

    @Override
    public DichVuStore getDichVuStoreByID(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(DichVuStore.class, id);
    }

}
