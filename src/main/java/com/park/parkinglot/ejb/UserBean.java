/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package com.park.parkinglot.ejb;

import com.park.parkinglot.common.UserDetails;
import com.park.parkinglot.entity.User;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.logging.Logger;
import javax.ejb.EJBException;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author asus
 */
@Stateless
public class UserBean {

    private static final Logger LOG = Logger.getLogger(UserBean.class.getName());
    @PersistenceContext
    private EntityManager em;
    
    public void createUser(String username, String email, String passwordSha256, String position){
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPassword(passwordSha256);
        user.setPosition(position);
        
        em.persist(user);
    }
    private Iterable<User> users;
    
   public List<UserDetails> getAllUsers() {
         LOG.info("getAllUsers");
       try {
           Query query = em.createQuery("SELECT c FROM User c");
            List<User> users = (List<User>) query.getResultList();
            return copyUsersToDetails(users);
        } catch (Exception ex) {
            throw new EJBException(ex);
        }
    }
   
   private List<UserDetails> copyUsersToDetails(List<User> cars) {
      List<UserDetails> detailsList = new ArrayList<>();
      for (User user : users){
          UserDetails userDetails = new UserDetails(user.getId(),user.getUsername(),user.getEmail(),user.getPosition());
          detailsList.add(userDetails);
      }
      return detailsList;
   }
   
   public Collection<String> findUsernames(Collection<Integer> userIds){
       LOG.info("findUsernames");
       List<String> usernames = (List<String>) em.createQuery("SELECT u.username FROM User u WHERE u.id IN ?1").setParameter(1, userIds).getResultList();
       return usernames;
   }
}
