package com.qhit.fsaas.util;

import com.qhit.fsaas.bo.Global;
import com.qhit.fsaas.bo.Seat;
import com.qhit.fsaas.bo.Seats;
import com.qhit.fsaas.service.ISeatsService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.*;

@Component
public class InitUtil {
    @Resource
    ISeatsService seatsService;
    @Resource
    private RedisUtil redisUtil;

    private List<Seat> seatList = new ArrayList<>();
    private HashMap<Long, LinkedList<Seat>> seatHash = new HashMap<>();
    private long[] seatCount;
//    private HashMap<Long, LinkedList<Person>> personHash = new HashMap<>();
//    private List<Person> personList = new ArrayList<>();

    void init() {
        initSeat(seatsService.selectAll());
        redisUtil.setTid(redisUtil.getTid());
        redisUtil.setSeatList(seatList);
        redisUtil.setSeatCount(seatCount);
        redisUtil.setSeatHash(seatHash);
    }

    private void initSeat(List<Seats> seatsList) {
        seatCount = new long[seatsList.size()];

        int a = 0;
        for (int i = 0; i < seatsList.size(); i++) {
            Seats seats = seatsList.get(i);

            Seat seat = new Seat(seats.getSColumn(), seats.getSRow() + "", i);
            if (seats.getAssigned() == 0) {
                seat.setFlg(Global.SEAT_STATUS_ASSIGNING);
            }
            seat.setIsWindows(seats.getV_window());
            seat.setIsAisle(seats.getV_aisle());
            seat.setIsCarryBaby(seats.getV_basket());
            seat.setIsGate(seats.getV_gate());

            seatList.add(seat);

            if (seats.getSColumn().equals("")) {
                seatCount[i] = 0;
            }else{
                seatCount[i] = seatsList.size()- 11 - a++;
            }
        }
        addToSeatHashMap(seatList);
    }

    public void showSeatCount() {
        long[] seatCount = redisUtil.getSeatCount();
        for (int i = 0; i < seatCount.length; i++) {
            if (i%20==0) System.out.println();
            System.out.print(seatCount[i] + "\t");
        }
        System.out.println("\n---------------------------------------------------------------------------------");
    }

    private void addToSeatHashMap(List<Seat> seatList) {
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
    }

    public Seat updateSeat(LinkedList<Seat> seatList,long flag) {
        long[] seatCount = redisUtil.getSeatCount();
        Iterator iterator = seatList.iterator();
        while (iterator.hasNext()) {
            Seat seat = (Seat)iterator.next();
            //已经被分出去的座位删除
            if ((seat.getFlg() & Global.SEAT_STATUS_UNASSIGNED) != Global.SEAT_STATUS_UNASSIGNED) {
                iterator.remove();
                continue;
            }
            seat.setFlg(Global.SEAT_STATUS_ASSIGNING);

            long oldCount = seatCount[seat.getColumn()];

            seatCount[seat.getColumn()] = Global.SEAT_STATUS_ASSIGNED;

            for (int i = 0; i < seat.getColumn(); i++) {
                if (seatCount[i] >= oldCount) {
                    seatCount[i] = seatCount[i] - oldCount;
                }
            }
            iterator.remove();

            HashMap<Long, LinkedList<Seat>> seatHash = redisUtil.getSeatHash();
            seatHash.remove(flag);
            seatHash.put(flag,seatList);
            redisUtil.setSeatHash(seatHash);
            redisUtil.setSeatCount(seatCount);

            return seat;
        }
        return null;
    }
}