/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.Loaimon;
import com.nhtc.pojo.Monan;
import com.nhtc.pojo.Phieudatmon;
import com.nhtc.repository.ThucDonRepository;
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
@PropertySource("classpath:messages.properties")
@Transactional
public class ThucDonRepositoryImpl implements ThucDonRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    @Autowired
    private Environment env;

    @Override
    public List<Loaimon> getLoaiMon() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Loaimon");

        return q.getResultList();
    }

    @Override
    public List<Monan> getMonAn(String params, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<Monan> q = b.createQuery(Monan.class);
        Root root = q.from(Monan.class);
        q.select(root);

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            Predicate p = b.equal(root.get("idThucDon"), Integer.parseInt(params));
            predicates.add(p);
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
    public Loaimon getLoaiMonByID(int loaiMonId) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Loaimon.class, loaiMonId);
    }

    @Override
    public long countMonAn(String params) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder cb = s.getCriteriaBuilder();
        CriteriaQuery<Long> cq = cb.createQuery(Long.class);

        Root r = cq.from(Monan.class);
        cq.select(cb.count(r));

        if (params != null) {
            List<Predicate> predicates = new ArrayList<>();
            Predicate p = cb.equal(r.get("idThucDon"), Integer.parseInt(params));
            predicates.add(p);
            cq.where(predicates.toArray(new Predicate[]{}));
//            cq.select(r).where(cb.equal(r.get("idThucDon"), Integer.parseInt(params)));
        }

        Query q = s.createQuery(cq);
        return Long.parseLong(q.getSingleResult().toString());

    }

    @Override
    public Monan getMonAnById(int id) {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        return s.get(Monan.class, id);
    }

    @Override
    public List<Phieudatmon> getPhieuDatMon() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From Phieudatmon");

        return q.getResultList();
    }
}
