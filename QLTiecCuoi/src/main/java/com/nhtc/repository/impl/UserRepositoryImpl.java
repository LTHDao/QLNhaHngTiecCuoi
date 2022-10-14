/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.nhtc.repository.impl;

import com.nhtc.pojo.User;
import com.nhtc.repository.UserRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
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
public class UserRepositoryImpl implements UserRepository {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public boolean addUser(User user) {

        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(user);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }

    @Override
    public List<User> getUsers(String username) {

        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<User> query = builder.createQuery(User.class);
        Root root = query.from(User.class);
        query = query.select(root);

        if (!username.isEmpty()) {
            Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
            query = query.where(p);
        }
        Query q = session.createQuery(query);
//        Session s = this.sessionFactory.getObject().getCurrentSession();
//        Query q = s.createQuery("From User");
        return q.getResultList();
    }

    @Override
    public User getUserByUsername(String username) {
//        Session session = this.sessionFactory.getObject().getCurrentSession();
//
//        return session.get(User.class, username);
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<User> q = b.createQuery(User.class);
        Root root = q.from(User.class);
        q.select(root);

        q.where(b.equal(root.get("username").as(String.class), username.trim()));

        Query query = session.createQuery(q);
        return (User) query.getSingleResult();
    }

    @Override
    public User getUserById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();

        return session.get(User.class, id);
    }

    @Override
    public List<User> getUserByUserRole() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder b = session.getCriteriaBuilder();
        CriteriaQuery<User> q = b.createQuery(User.class);
        Root root = q.from(User.class);
        q.select(root);
        String userRole = "ROLE_EMPLOYEE";
        q.where(b.equal(root.get("userRole"), userRole));

        Query query = session.createQuery(q);
        return query.getResultList();
    }

    @Override
    public boolean deleteUser(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            User nv = session.get(User.class, id);
            session.delete(nv);
            return true;
        } catch (Exception ex) {
            System.err.println(ex.getMessage());
            ex.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateNhanVien(User user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            User u = session.get(User.class, user.getId());
            u.setHoTen(user.getHoTen());
            u.setNgaySinh(user.getNgaySinh());
            u.setGioiTinh(user.getGioiTinh());
            u.setDiaChi(user.getDiaChi());
            u.setEmail(user.getEmail());
            u.setSdt(user.getSdt());
            u.setUserRole(user.getUserRole());
//                u.setAvatar(user.getAvatar());
            session.update(u);
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        return false;
    }

    @Override
    public List<User> getListUser() {
        Session s = this.sessionFactory.getObject().getCurrentSession();
        Query q = s.createQuery("From User");
        return q.getResultList();
    }
}
