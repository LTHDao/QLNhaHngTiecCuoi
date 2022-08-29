/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Dichvu;
import com.nhtc.pojo.Loaidichvu;
import com.nhtc.repository.DichVuRepository;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
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
    public List<Dichvu> getDichVu(String params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Dichvu> q = b.createQuery(Dichvu.class);
        Root root = q.from(Dichvu.class);
        q.select(root);

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            Predicate p = b.equal(root.get("loaiDichVu"), Integer.parseInt(params));
            predicates.add(p);
            q.where(predicates.toArray(new Predicate[]{}));
        }
        Query query = session.createQuery(q);

        int max = Integer.parseInt(env.getProperty("page.size").toString());
        query.setMaxResults(max);
        query.setFirstResult((page - 1) * max);

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
    public List<Dichvu> getDichvu(String kw) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public boolean addOrUpdate(Dichvu dichvu) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try{ 
            session.save(dichvu);
            return true;
        }catch(Exception ex){
            System.err.println("===+THEM DICH VU+===" + ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

}
