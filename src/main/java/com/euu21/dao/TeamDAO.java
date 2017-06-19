package com.euu21.dao;

import com.euu21.model.Team;

import java.util.List;

/**
 * Created by Ja on 16.06.2017.
 */
public interface TeamDAO {

    public void addTeam(Team team);
    public void updateTeam(Team team);
    public Team getTeam(int id);
    public void deleteTeam(int id);
    public List<Team> getTeams();
    public List<Team> getTeamsByGroup(String group);
    public List<Team> getTeamsByName(String name);
}
