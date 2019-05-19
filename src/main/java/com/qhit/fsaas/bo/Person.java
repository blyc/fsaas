package com.qhit.fsaas.bo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Person implements Serializable {
    private String name;
    private int isWindows = 0;
    private int isAisle = 0;
    private int isGate = 0;
    private int isCarryBaby = 0;
    private int group;
    private long flg = 0;

    private static final long serialVersionUID = 1L;

    public Person(String name, String preferred,int group) {
        this.name = name;
        this.flg |= Global.SEAT_STATUS_UNASSIGNED;
        switch (preferred) {
            case "windows":
                this.isWindows = 1;
                this.flg |= Global.SEAT_STATUS_WINDOWS;
                break;
            case "aisle":
                this.isAisle = 1;
                this.flg |= Global.SEAT_STATUS_AISLE;
                break;
            case "gate":
                this.isGate = 1;
                this.flg |= Global.SEAT_STATUS_GATE;
                break;
            case "basket":
                this.isCarryBaby = 1;
                this.flg |= Global.SEAT_STATUS_BABY;
                break;
            default:
                break;
        }
        this.group=group;
    }

    public void setFlg(long flg) {
        this.flg &= flg;
    }
}



