package com.euu21.dao;

import com.euu21.model.Player;

import java.util.List;

/**
 * Created by Ja on 20.06.2017.
 */
public interface PlayerDAO {
    public List<Player> getPlayers();
    public List<Player> getPlayersByTeam(Integer idteam);
}
