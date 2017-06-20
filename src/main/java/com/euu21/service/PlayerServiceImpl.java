package com.euu21.service;


import com.euu21.dao.PlayerDAO;
import com.euu21.model.Player;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by Ja on 20.06.2017.
 */
@Service
@Transactional
public class PlayerServiceImpl implements PlayerService {

    @Autowired
    private PlayerDAO playerDAO;

    @Override
    public List<Player> getPlayers() {
        return null;
    }

    @Override
    public List<Player> getPlayersforTeam(Integer idTeam) {
        return playerDAO.getPlayersByTeam(idTeam);
    }
}
