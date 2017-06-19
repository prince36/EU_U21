package com.euu21.model;

import com.euu21.model.Match;
import javax.persistence.*;
import java.math.BigDecimal;
import java.util.List;
import java.util.Set;

/**
 * Created by Ja on 16.06.2017.
 */
@Entity // This tells Hibernate to make a table out of this class
@Table(name="teams")
public class Team {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idteams;
    private String name;
    private String description;
    private String group;
    //private String goalsScored;
    //private String goalsLost;
    @ManyToMany
    private Set<Match> matchs;


    public Integer getIdteams() {
        return idteams;
    }

    public void setIdteams(Integer idteams) {
        this.idteams = idteams;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGroup() {
        return group;
    }

    public void setGroup(String group) {
        this.group = group;
    }

    @OneToMany(cascade=CascadeType.ALL, mappedBy="match")
    public Set<Match> getMatchs() {
        return matchs;
    }

    public void setMatchs(Set<Match> matchs) {
        this.matchs = matchs;
    }


}
