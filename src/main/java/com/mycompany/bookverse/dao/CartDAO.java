/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.bookverse.dao;

import java.util.List;
import com.mycompany.bookverse.model.*;
import com.mycompany.bookverse.utils.JPAUtil;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

/**
 *
 * @author TrungNT - CE200064
 */
public class CartDAO {
    public List<Cart> getCartByCustomerId(int customerId) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            String sql = "SELECT c FROM Cart c WHERE c.customerId.customerId = :customerId";
            TypedQuery<Cart> query = em.createQuery(sql, Cart.class);
            query.setParameter("customerId", customerId);
            
            return query.getResultList();
        } finally {
            em.close();
        }
    }
}
