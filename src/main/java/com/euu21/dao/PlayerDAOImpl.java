package com.euu21.dao;

import com.euu21.model.Player;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ja on 20.06.2017.
 */
@Repository
public class PlayerDAOImpl implements PlayerDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }


    @SuppressWarnings("unchecked")
    public List<Player> getPlayers() {
        List<Player> xxx = getCurrentSession().createQuery("FROM Player").list();
        System.out.println("Rozmiar składu: "+xxx.size());
        return xxx;
    }

    @SuppressWarnings("unchecked")
    public List<Player> getPlayersByTeam(Integer idteam) {
        return getCurrentSession().createQuery("FROM Player WHERE teamid="+idteam).list();
    }

}
