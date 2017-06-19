package com.euu21.service;

import com.euu21.dao.MatchDAO;
import com.euu21.dao.TeamDAO;
import com.euu21.model.Match;
import com.euu21.model.Team;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ja on 18.06.2017.
 */

@Service
@Transactional
public class MatchServiceImpl {

    @Autowired
    private MatchDAO matchDAO;

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
    public List<Match> getMatchsforTeam(Team team){
        int bramki_zdobyte=0;
        int bramki_stracone=0;
        int liczba_meczy=0;
        List<Match> match = matchDAO.getMatchs();



        return match;
    }

}
