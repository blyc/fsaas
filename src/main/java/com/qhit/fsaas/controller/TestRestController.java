package com.qhit.fsaas.controller;

import com.alibaba.fastjson.JSONObject;
import com.qhit.fsaas.bo.*;
import com.qhit.fsaas.util.*;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.*;

@RestController

public class TestRestController {
    @Resource
    RedisUtil redisUtil;
    @Resource
    InitUtil initUtil;

    @RequestMapping("/assigned")
    public String assigned(@RequestBody List<Passengers> passengers) {
        if (passengers.isEmpty()){
            return "List is empty!";
        }else if (passengers.size()==1){
            if (passengers.get(0).getPassenger_num()==1){
                return "List.size is one!\nPassenger is one!";
            }else{
                return "List.size is one!\nPassenger is more!";
            }
        }else{
            return "List.size is more!";
        }
    }

    @RequestMapping("/selectAll")
    public JSONObject selectAll() {
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("allSeats",redisUtil.getSeatList());
        return jsonObject;
    }

    @RequestMapping("/assignedSeatForOne")
    public JSONObject assignedSeatForOne(@RequestBody List<Passengers> passengers) {
        JSONObject jsonObject = new JSONObject();

        Passenger passenger = passengers.get(0).getPassenger_info().get(0);
        Person person = new Person(passenger.getPName(),passenger.getPreferred(),1);

        HashMap<Long, LinkedList<Seat>> seatHash = redisUtil.getSeatHash();

        Set<Long> seatKeySet = seatHash.keySet();
        LinkedList<Seat> seatlist = null;
        long flag = -1;
        for (Long seatFlag : seatKeySet) {
            if ((seatFlag & person.getFlg()) == person.getFlg()) {
                seatlist = redisUtil.getSeatHash().get(seatFlag);
                if (seatlist != null && seatlist.size() != 0) {
                    flag = seatFlag;
                    break;
                }
            }
        }

        if (seatlist == null || seatlist.size() == 0) {
            jsonObject.put("status","4");
            jsonObject.put("message","没有合适的座位");
        } else {
            jsonObject.put("status","1");
            Seat seat = initUtil.updateSeat(seatlist,flag);
            passengers.get(0).getPassenger_info().get(0).setSeat(seat);
            jsonObject.put("message", passengers);
            person.setFlg(Global.SEAT_STATUS_ASSIGNING);
        }
        initUtil.showSeatCount();
        return jsonObject;
    }

    @RequestMapping("/assignedSeatForGroup")
    public JSONObject assignedSeatForGroup(@RequestBody List<Passengers> passengers) {
        JSONObject jsonObject = new JSONObject();

        long[] seatCount = redisUtil.getSeatCount();
        List<Seat> seatList = redisUtil.getSeatList();
        Integer passenger_num = passengers.get(0).getPassenger_num();
        int index = 0;
        boolean isFound = false;

        for (int i = 0; i < seatCount.length; i++) {
            if (seatCount[i] >= passenger_num) {
                isFound = true;
                long oldCount = seatCount[i];
                for (int k = i; k < (i + passenger_num); k++) {
                    seatCount[k] = 0;
                    Seat seat = seatList.get(k);
                    seat.setFlg(Global.SEAT_STATUS_ASSIGNING);
                    passengers.get(0).getPassenger_info().get(index++).setSeat(seat);
                }
                for (int z = 0; z < i; z++) {
                    if (seatCount[z] >= oldCount) {
                        seatCount[z] = seatCount[i] - oldCount;
                    }
                }

                HashMap<Long, LinkedList<Seat>> seatHash = new HashMap<>();
                for (Seat seat : seatList) {
                    LinkedList<Seat> seats = seatHash.get(seat.getFlg());
                    if (seats == null || seats.size() == 0) {
                        seats = new LinkedList<>();
                        seats.add(seat);
                        seatHash.put(seat.getFlg(), seats);
                    } else {
                        seats.add(seat);
                    }
                }

                redisUtil.setSeatHash(seatHash);
                redisUtil.setSeatCount(seatCount);
                break;
            }
        }
        if (isFound) {
            jsonObject.put("status","1");
            jsonObject.put("message", passengers);
        } else {
            jsonObject.put("status","4");
            jsonObject.put("message","没有合适的座位");
        }
        initUtil.showSeatCount();
        return jsonObject;
    }

    @RequestMapping("/assignedSeatForAll")
    public JSONObject assignedSeatForAll(@RequestBody List<Passengers> passengers) {
        JSONObject jsonObject = new JSONObject();

        return jsonObject;
    }
}
