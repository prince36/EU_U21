package com.euu21.dao;

import com.euu21.model.Team;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Ja on 16.06.2017.
 */
@Repository
public class TeamDAOImpl implements TeamDAO {

    @Autowired
    private SessionFactory sessionFactory;

    private Session getCurrentSession() {
        return sessionFactory.getCurrentSession();
    }

    public void addTeam(Team team) {
        getCurrentSession().save(team);
    }

    public void updateTeam(Team team) {
        Team teamToUpdate = getTeam(team.getIdteams());
        teamToUpdate.setName(team.getName());
        teamToUpdate.setDescription(team.getDescription());
        teamToUpdate.setGroup(team.getGroup());
        getCurrentSession().update(teamToUpdate);

    }

    public Team getTeam(int id) {
        Team team = (Team) getCurrentSession().get(Team.class, id);
        return team;
    }

    public Team getTeam(String name) {
        Team team = (Team) getCurrentSession().get(Team.class, name);
        return team;
    }

    public void deleteTeam(int id) {
        Team team = getTeam(id);
        if (team != null)
            getCurrentSession().delete(team);
    }

    @SuppressWarnings("unchecked")
    public List<Team> getTeams() {
        return getCurrentSession().createQuery("from Team").list();
    }


    public List<Team> getTeamsByGroup(String group)
    {
        return getCurrentSession().createQuery("from Team where group='"+group+"'").list();
    }

    public List<Team> getTeamsByName(String name) {

        return getCurrentSession().createQuery("from Team where name='"+name+"'").list();
    }
}
