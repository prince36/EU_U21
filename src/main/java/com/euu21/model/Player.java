package com.euu21.model;




import javax.persistence.*;
import javax.persistence.criteria.CriteriaBuilder;

/**
 * Created by Ja on 20.06.2017.
 */
@Entity // This tells Hibernate to make a table out of this class
@Table(name="players")
public class Player {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idplayers;
    private Integer number;
    private String full_name;
    private Integer teamid;
    private String position;

    public Integer getIdplayers() {
        return idplayers;
    }

    public void setIdplayers(Integer idplayers) {
        this.idplayers = idplayers;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public Integer getTeamid() {
        return teamid;
    }

    public void setTeamid(Integer teamid) {
        this.teamid = teamid;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }
}
