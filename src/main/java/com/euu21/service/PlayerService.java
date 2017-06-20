package com.euu21.service;

import com.euu21.model.Match;
import com.euu21.model.Player;

import java.util.List;

/**
 * Created by Ja on 20.06.2017.
 */
public interface PlayerService {
    public List<Player> getPlayers();
    public List<Player> getPlayersforTeam(Integer idTeam);
}
