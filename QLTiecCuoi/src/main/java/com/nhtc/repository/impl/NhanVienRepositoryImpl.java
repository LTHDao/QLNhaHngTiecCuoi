/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Nhanvien;
import com.nhtc.pojo.User;
import com.nhtc.repository.NhanVienRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Minh
 */
@Repository
@Transactional
public class NhanVienRepositoryImpl implements NhanVienRepository{

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    
    @Override
    public List<Nhanvien> getNhanVien(String nv) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Nhanvien");
        
        return q.getResultList();
        
    }

    
    @Override
    public boolean addNhanVien(Nhanvien nhanVien) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{
            session.save(nhanVien);
            return true;
        } catch  (HibernateException ex){
            System.err.println(ex.getMessage());
        }
        return false;
    }
    
}
