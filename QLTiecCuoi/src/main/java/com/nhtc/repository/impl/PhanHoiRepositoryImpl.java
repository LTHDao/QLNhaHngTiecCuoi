/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Dondattiec;
import com.nhtc.pojo.PhanHoi;
import com.nhtc.pojo.User;
import com.nhtc.repository.PhanHoiRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
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
public class PhanHoiRepositoryImpl implements PhanHoiRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<PhanHoi> getPhanHoi() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = s.getCriteriaBuilder();
        CriteriaQuery<PhanHoi> q = b.createQuery(PhanHoi.class);
        
        Root root = q.from(PhanHoi.class);
        q.orderBy(b.desc(root.get("ngayPhanHoi")));
        
        Query query = s.createQuery(q);

        return query.getResultList();
    }

    @Override
    public PhanHoi addPhanHoi(String noiDung, User user) {
        Session s = this.sessionFactory.getObject().getCurrentSession();

        try {
            PhanHoi p = new PhanHoi();
            p.setNoiDung(noiDung);
            p.setUserId(user);

            s.save(p);

            return p;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return null;
    }

}
