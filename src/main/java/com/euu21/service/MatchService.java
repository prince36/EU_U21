package com.euu21.service;

import com.euu21.model.Match;

import java.util.List;

/**
 * Created by Ja on 18.06.2017.
 */
public interface MatchService {
    public void addMatch(Match match);
    public void updateMatch(Match match);
    public Match getMatch(int id);
    public void deleteMatch(int id);
    public List<Match> getMatchs();
}
