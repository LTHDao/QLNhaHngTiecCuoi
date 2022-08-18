/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Loaisanh;
import com.nhtc.repository.LoaiSanhRepository;
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
public class LoaiSanhRepositoryImpl implements LoaiSanhRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Loaisanh> getLoaiSanh() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Loaisanh");
        
        return q.getResultList();
    }
    
}
