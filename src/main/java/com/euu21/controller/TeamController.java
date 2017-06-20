package com.euu21.controller;

import com.euu21.dao.MatchDAO;
import com.euu21.model.Team;
import com.euu21.model.Match;
import com.euu21.service.MatchService;
import com.euu21.service.PlayerService;
import com.euu21.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Ja on 16.06.2017.
 */
@Controller
@RequestMapping("/teams/")
public class TeamController {


    @Autowired
    private TeamService teamService;

    @Autowired
    public MatchService matchService;
    @Autowired
    public PlayerService playerService;

    @RequestMapping("/")
    public String getTeams(Model model) {
        List<Team> teams = teamService.getTeams();
        model.addAttribute("teams", teams);
        return "teams";
    }


    @RequestMapping("/{group}")
    public String getTeamsByCategory(Model model, @PathVariable("group") String group) {
        List<Team> teams = teamService.getTeamsByGroup(group);
        System.out.println(teams.get(0).getName()+" "+teams.get(1).getName());
        if (teams == null || teams.isEmpty()){ }
        model.addAttribute("teams", teams);
        model.addAttribute("tables", teamService.generateTabela(group));
        model.addAttribute("matchs", matchService.getMatchsforGroup(group));

        return "group";
    }

    @RequestMapping("/team/{name}")
    public String getTeamsByName(Model model, @PathVariable("name") String name) {
        List<Team> team = teamService.getTeamsByName(name);

        model.addAttribute("teams", team);
        model.addAttribute("tables", teamService.generateTabela(team.get(0).getGroup()));
        model.addAttribute("players", playerService.getPlayersforTeam(team.get(0).getIdteams()));
        return "team";
    }
}
