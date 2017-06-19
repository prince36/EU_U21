package com.euu21.model;

/**
 * Created by Ja on 20.06.2017.
 */
public class Tabela {
    private String team_name;
    private int mr;
    private int g_plus;
    private int g_minus;
    private int pkt;

    public Tabela(String team_name, int mr, int g_plus, int g_minus, int pkt) {
        this.team_name = team_name;
        this.mr = mr;
        this.g_plus = g_plus;
        this.g_minus = g_minus;
        this.pkt = pkt;
    }

    public String getTeam_name() {
        return team_name;
    }

    public void setTeam_name(String team_name) {
        this.team_name = team_name;
    }

    public int getMr() {
        return mr;
    }

    public void setMr(int mr) {
        this.mr = mr;
    }

    public int getG_plus() {
        return g_plus;
    }

    public void setG_plus(int g_plus) {
        this.g_plus = g_plus;
    }

    public int getG_minus() {
        return g_minus;
    }

    public void setG_minus(int g_minus) {
        this.g_minus = g_minus;
    }

    public int getPkt() {
        return pkt;
    }

    public void setPkt(int pkt) {
        this.pkt = pkt;
    }
}
