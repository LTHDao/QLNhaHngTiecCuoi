/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.PhanHoi;
import com.nhtc.pojo.User;
import com.nhtc.repository.PhanHoiRepository;
import java.util.List;
import javax.persistence.Query;
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
        Query q = s.createQuery("From PhanHoi");
        

        return q.getResultList();
    }

    @Override
    public PhanHoi addPhanHoi(String noiDung) {
        Session s = this.sessionFactory.getObject().getCurrentSession();

        try {
            PhanHoi p = new PhanHoi();
            p.setNoiDung(noiDung);
            p.setUserId(s.get(User.class, 2));

            s.save(p);

            return p;
        } catch (HibernateException ex) {
            ex.printStackTrace();
        }

        return null;
    }

}
