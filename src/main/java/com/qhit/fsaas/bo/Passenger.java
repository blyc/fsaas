package com.qhit.fsaas.bo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Passenger implements Serializable {
    private Integer id;
    private String pName;
    private String preferred;
    private Seat seat;

    private static final long serialVersionUID = 1L;
}
