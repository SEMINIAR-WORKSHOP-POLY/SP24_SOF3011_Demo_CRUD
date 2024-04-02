package com.hangnt169.demo.repository;

import com.hangnt169.demo.entity.MayTinh;
import com.hangnt169.demo.util.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.query.Query;

import java.util.List;

/**
 * @author hangnt169
 */
public class MayTinhRepository {

    private Session session;

    public MayTinhRepository() {
        session = HibernateUtil.getFACTORY().openSession();
    }

    public List<MayTinh> getAll() {
        return session.createQuery("FROM MayTinh").getResultList();
    }

    public MayTinh getOne(Long id) {
        // C1: Query => jakatar
//        Query query = session.createQuery("FROM  SanPham where id  = :id");
//        query.setParameter("id", id);
//        return (SanPham) query.getSingleResult();
        // C2: Query => org Hibernate
        Query<MayTinh> query = session.createQuery("FROM MayTinh  WHERE  id = ?1");
        query.setParameter(1, id);
        return query.getSingleResult();
    }

    public void addOrUpdate(MayTinh mayTinh) {
        try {
            session.getTransaction().begin();
            session.saveOrUpdate(mayTinh);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

    public void delete(MayTinh mayTinh) {
        try {
            session.getTransaction().begin();
            session.delete(mayTinh);
            session.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            session.getTransaction().rollback();
        }
    }

    public static void main(String[] args) {
        System.out.println(new MayTinhRepository().getOne(1L));
    }
}
