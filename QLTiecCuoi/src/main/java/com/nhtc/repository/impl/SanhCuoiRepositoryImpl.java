/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.DichVuStore;
import com.nhtc.pojo.SanhCuoiStore;
import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.repository.SanhCuoiRepository;
import java.util.ArrayList;
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

/**
 *
 * @author hdao2
 */
@Repository
@Transactional
public class SanhCuoiRepositoryImpl implements SanhCuoiRepository {

    @Autowired
    LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Sanhcuoi> getSanhCuoi() {
        Session s = sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Sanhcuoi");

        return q.getResultList();
    }

    @Override
    public boolean addOrUpdateSanhCuoi(Sanhcuoi sanhCuoi) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        System.out.println("hongdaodau" + sanhCuoi.getIdSanhCuoi());
        try {
            session.save(sanhCuoi);

            SanhCuoiStore sanhStore = new SanhCuoiStore();

            sanhStore.setDienTich(sanhCuoi.getDienTich());
            sanhStore.setGiaToiThieu(sanhCuoi.getGiaToiThieu());
            sanhStore.setHinhAnh(sanhCuoi.getHinhAnh());
            sanhStore.setIdSanhChinh(sanhCuoi);
            sanhStore.setMoTa(sanhCuoi.getMoTa());
            sanhStore.setSoLuongBan(sanhCuoi.getSoLuongBan());
            sanhStore.setTenSanh(sanhCuoi.getTenSanh());

            session.save(sanhStore);

            return true;
        } catch (Exception ex) {
            System.err.println("==ADD== " + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public Sanhcuoi getSanhCuoiById(int idSanh) {
        Session s = sessionFactory.getObject().getCurrentSession();

        return s.get(Sanhcuoi.class, idSanh);
    }

    @Override
    public List<SanhCuoiStore> getStoreBySanh(int idSanh) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<SanhCuoiStore> q = b.createQuery(SanhCuoiStore.class);
        Root rootS = q.from(SanhCuoiStore.class);

        List<Predicate> predicates = new ArrayList<>();
        Predicate p = b.equal(rootS.get("idSanhChinh"), idSanh);
        predicates.add(p);
        q.where(predicates.toArray(new Predicate[]{}));
        q.orderBy(b.desc(rootS.get("id")));

        q.select(rootS);

        Query query = session.createQuery(q);

        return query.getResultList();
    }

    @Override
    public boolean deleteSanhCuoi(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Sanhcuoi s = session.get(Sanhcuoi.class, id);
            session.delete(s);

            return true;
        } catch (Exception ex) {
            System.err.println("==ADD== " + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateSanhCuoi(Sanhcuoi sanhCuoi) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            Sanhcuoi s = getSanhCuoiById(sanhCuoi.getIdSanhCuoi());
            s.setDienTich(sanhCuoi.getDienTich());
            s.setGiaToiThieu(sanhCuoi.getGiaToiThieu());
            s.setMoTa(sanhCuoi.getMoTa());
            s.setSoLuongBan(sanhCuoi.getSoLuongBan());
            s.setTenSanh(sanhCuoi.getTenSanh());
            session.update(s);

            SanhCuoiStore sanhStore = new SanhCuoiStore();

            sanhStore.setDienTich(sanhCuoi.getDienTich());
            sanhStore.setGiaToiThieu(sanhCuoi.getGiaToiThieu());
            sanhStore.setIdSanhChinh(sanhCuoi);
            sanhStore.setMoTa(sanhCuoi.getMoTa());
            sanhStore.setHinhAnh(s.getHinhAnh());
            sanhStore.setSoLuongBan(sanhCuoi.getSoLuongBan());
            sanhStore.setTenSanh(sanhCuoi.getTenSanh());

            session.save(sanhStore);

            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateSanhStore(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            List<SanhCuoiStore> listSanhStore = getStoreBySanh(id);
            for (SanhCuoiStore sanhCuoiStore : listSanhStore) {
                sanhCuoiStore.setIdSanhChinh(null);
                session.update(sanhCuoiStore);
            }
            return true;
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return false;
    }
}
