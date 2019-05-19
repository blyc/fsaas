package com.qhit.fsaas.bo;

import lombok.Data;

import java.io.Serializable;

@Data
public class Seats implements Serializable {
    private Integer sid;
    private Integer sRow;
    private String sColumn;
    private Integer v_gate;
    private Integer v_aisle;
    private Integer v_window;
    private Integer v_basket;
    private Integer assigned;
    private Integer v_exit;

    private Integer aid;
    private String pName;

    //v_gate,s.v_aisle,s.v_window,s.v_basket,s.v_exit,IF(ifNULL(aid,0)=0,0,1)
    //登机口    靠过道     靠窗     婴儿挂篮     紧急出口    是否已分配
    private String flag;

    private static final long serialVersionUID = 1L;
}