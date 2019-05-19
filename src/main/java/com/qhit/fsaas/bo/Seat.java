package com.qhit.fsaas.bo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Seat implements Serializable {
    private String col;
    private String row;
    private int isWindows;
    private int isAisle;
    private int isGate;
    private int isCarryBaby;
    private int column;
    private long flg;

    private static final long serialVersionUID = 1L;

    public Seat(String col, String row, int column) {
        this.col = col;
        this.row = row;
        this.column = column;
        this.flg |= Global.SEAT_STATUS_UNASSIGNED;
    }

    public Seat(String col, String row, int isWindows, int isAisle, int isGate, int isCarryBaby, int column, long flg) {
        this.col = col;
        this.row = row;
        this.isWindows = isWindows;
        this.isAisle = isAisle;
        this.isGate = isGate;
        this.isCarryBaby = isCarryBaby;
        this.column = column;
        this.flg |= Global.SEAT_STATUS_UNASSIGNED;
    }

    public void setIsWindows(int isWindows) {
        this.isWindows = isWindows;
        if (this.isWindows == 1) {
            this.flg |= Global.SEAT_STATUS_WINDOWS;
        }
    }

    public void setIsAisle(int isAisle) {
        this.isAisle = isAisle;
        if (this.isAisle == 1) {
            this.flg |= Global.SEAT_STATUS_AISLE;
        }
    }

    public void setIsGate(int isGate) {
        this.isGate = isGate;
        if (this.isGate == 1) {
            this.flg |= Global.SEAT_STATUS_GATE;
        }
    }

    public void setIsCarryBaby(int isCarryBaby) {
        this.isCarryBaby = isCarryBaby;
        if (this.isCarryBaby == 1) {
            this.flg |= Global.SEAT_STATUS_BABY;
        }
    }

    public void setFlg(long flg) {
        this.flg &= flg;
    }

    @Override
    public String toString() {
        return "Seat{" +
                "col=" + col +
                ",row=" + row +
                ",column=" + column +
                ",flg=" + flg +
                '}';
    }
}
