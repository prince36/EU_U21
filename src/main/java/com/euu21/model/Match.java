package com.euu21.model;

import javax.persistence.*;

/**
 * Created by Ja on 18.06.2017.
 */
@Entity // This tells Hibernate to make a table out of this class
@Table(name="matchs")
public class Match {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer idmatch;
    private Integer idteam1;
    private Integer idteam1_wynik;
    private Integer idteam2_wynik;
    private Integer idteam2;

    public Integer getIdmatch() {
        return idmatch;
    }

    public void setIdmatch(Integer idmatch) {
        this.idmatch = idmatch;
    }

    public Integer getIdteam1() {
        return idteam1;
    }

    public void setIdteam1(Integer idteam1) {
        this.idteam1 = idteam1;
    }

    public Integer getIdteam1_wynik() {
        return idteam1_wynik;
    }

    public void setIdteam1_wynik(Integer idteam1_wynik) {
        this.idteam1_wynik = idteam1_wynik;
    }

    public Integer getIdteam2_wynik() {
        return idteam2_wynik;
    }

    public void setIdteam2_wynik(Integer idteam2_wynik) {
        this.idteam2_wynik = idteam2_wynik;
    }

    public Integer getIdteam2() {
        return idteam2;
    }

    public void setIdteam2(Integer idteam2) {
        this.idteam2 = idteam2;
    }
}