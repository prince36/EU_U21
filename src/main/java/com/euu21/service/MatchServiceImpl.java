package com.euu21.service;

import com.euu21.dao.MatchDAO;
import com.euu21.dao.TeamDAO;
import com.euu21.model.Match;
import com.euu21.model.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Ja on 18.06.2017.
 */

@Service
@Transactional
public class MatchServiceImpl implements MatchService {

    @Autowired
    private MatchDAO matchDAO;
    @Autowired
    private TeamDAO teamDAO;

    public void addMatch(Match match){

    }

    public void updateMatch(Match match){

    }

    public Match getMatch(int id){
        return matchDAO.getMatch(id);
    }

    public void deleteMatch(int id){

    }

    public List<Match> getMatchs(){
        return matchDAO.getMatchs();
    }


    //todo
    public List<Match> getMatchsforGroup(String group){
        List<Match> matchToReturn = new ArrayList<>();
        List<Match> matchs = matchDAO.getMatchs();
        List<Team> teams = teamDAO.getTeamsByGroup(group);

        for (final Match match : matchs) {
            for (final Team team : teams) {
                if(match.getIdteam1()==team.getIdteams() || match.getIdteam2()==team.getIdteams())
                {
                    if(!matchToReturn.contains(match)) {
                        matchToReturn.add(match);
                    }

                }
            }
        }
        return matchToReturn;
    }

}
