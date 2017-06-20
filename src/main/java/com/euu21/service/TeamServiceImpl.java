package com.euu21.service;
import com.euu21.dao.MatchDAO;
import com.euu21.dao.TeamDAO;
import com.euu21.model.Match;
import com.euu21.model.Tabela;
import com.euu21.model.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ja on 16.06.2017.
 */
@Service
@Transactional
public class TeamServiceImpl implements TeamService {

    @Autowired
    private TeamDAO teamDAO;
    @Autowired
    private MatchDAO matchDAO;

    public void addTeam(Team team) {
        teamDAO.addTeam(team);
    }

    public void updateTeam(Team team) {
        teamDAO.updateTeam(team);
    }

    public Team getTeam(int id) {
        return teamDAO.getTeam(id);
    }
    public Team getTeam(String name) {
        return teamDAO.getTeam(name);
    }

    public void deleteTeam(int id) {
        teamDAO.deleteTeam(id);
    }

    public List<Team> getTeams() {
        return teamDAO.getTeams();
    }

    public List<Team> getTeamsByGroup(String category) {
        return teamDAO.getTeamsByGroup(category);
    }

    public List<Team> getTeamsByName(String name) {
        return teamDAO.getTeamsByName(name);
    }

    public void listTeamToString(List<Team> teams) {
        int licznik = 0;
        for(final Team team : teams){
            System.out.println("Id: "+team.getIdteams()+" Name: "+team.getName());
        }
        licznik=licznik+1;
        System.out.println("Liczba zwroconych elementów: "+licznik);
    }

    public List<Tabela> generateTabela(String group) {
        System.out.println("wchodzi");
        List<Tabela> soc = new ArrayList<>();
        List<Team> teamsG = teamDAO.getTeamsByGroup(group);
        List<Match> matchs = matchDAO.getMatchs();
        System.out.println("lista meczy zawiera: "+matchs.size());
        int mr;
        int gp;
        int gm;
        int pkt;
        String name;
        Tabela t1;

        for(final Team teams : teamsG){
            System.out.println("pierwsza petla");
            mr=0; gp=0; gm=0; pkt=0; name="";
            name=teams.getName();
            for(final Match match : matchs){
                if (teams.getIdteams()==match.getIdteam1()){
                    mr=mr+1;
                    gp=gp+match.getIdteam1_wynik();
                    gm=gm-match.getIdteam2_wynik();

                    if(match.getIdteam1_wynik()>match.getIdteam2_wynik()){ pkt=pkt+3; }
                    if(match.getIdteam1_wynik()<match.getIdteam2_wynik()){ pkt=pkt+0; }
                    if(match.getIdteam1_wynik()==match.getIdteam2_wynik()){ pkt=pkt+1; }
                }
                if (teams.getIdteams()==match.getIdteam2()){
                    mr=mr+1;
                    gp=gp+match.getIdteam2_wynik();
                    gm=gm-match.getIdteam1_wynik();

                    if(match.getIdteam1_wynik()<match.getIdteam2_wynik()){ pkt=pkt+3; }
                    if(match.getIdteam1_wynik()>match.getIdteam2_wynik()){ pkt=pkt+0; }
                    if(match.getIdteam1_wynik()==match.getIdteam2_wynik()){ pkt=pkt+1; }
                }
            }
            t1= new Tabela(name,mr,gp,gm,pkt);
            soc.add(t1);
        }
        return soc;
    }
}
