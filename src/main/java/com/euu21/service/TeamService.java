package com.euu21.service;

import com.euu21.model.Tabela;
import com.euu21.model.Team;

import java.util.List;

/**
 * Created by Ja on 16.06.2017.
 */
public interface TeamService {
    public void addTeam(Team team);
    public void updateTeam(Team team);
    public Team getTeam(int id);
    public Team getTeam(String name);
    public void deleteTeam(int id);
    public List<Team> getTeams();
    List<Team> getTeamsByGroup(String category);
    List<Team> getTeamsByName(String name);
    public void listTeamToString(List<Team> teams);
    List<Tabela> generateTabela(String group);

}
