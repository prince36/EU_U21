package com.euu21.controller;

import com.euu21.service.TeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ja on 16.06.2017.
 */
@Controller
public class HomeController {

    @Autowired
    private TeamService teamService;

    @RequestMapping("/")
    public String welcome(Model model) {
        model.addAttribute("greeting", "Witaj w sklepie internetowym!");
        model.addAttribute("tagline", "Wyjątkowym i jedynym sklepie internetowym");
        model.addAttribute("teams", teamService.getTeams());

        return "teams";
        //return "forward:/welcome/greeting";
    }
}
