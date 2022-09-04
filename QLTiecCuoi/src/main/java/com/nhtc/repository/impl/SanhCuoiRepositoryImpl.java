/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Sanhcuoi;
import com.nhtc.repository.SanhCuoiRepository;
import java.util.List;
import javax.persistence.Query;
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
    public boolean addSanhCuoi(Sanhcuoi sanhCuoi) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(sanhCuoi);
            return true;
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }


}
