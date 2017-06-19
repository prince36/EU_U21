package com.euu21.dao;

import com.euu21.model.Match;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ja on 18.06.2017.
 */
@Repository
public class MatchDAOImpl implements MatchDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    public void addMatch(Match match) {
        getCurrentSession().save(match);
    }

    public void updateMatch(Match team) {
        Match teamToUpdate = getMatch(team.getIdmatch());

        getCurrentSession().update(teamToUpdate);

    }

    public Match getMatch(int id) {
        Match match = (Match) getCurrentSession().get(Match.class, id);
        return match;
    }

    public void deleteMatch(int id) {
        Match team = getMatch(id);
        if (team != null)
            getCurrentSession().delete(team);
    }

    @SuppressWarnings("unchecked")
    public List<Match> getMatchs() {
        return getCurrentSession().createQuery("FROM Match").list();
    }


}

