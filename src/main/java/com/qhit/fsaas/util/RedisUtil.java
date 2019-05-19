package com.qhit.fsaas.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.qhit.fsaas.bo.Person;
import com.qhit.fsaas.bo.Seat;
import com.qhit.fsaas.util.reference.HashPersonTypeReference;
import com.qhit.fsaas.util.reference.HashSeatTypeReference;
import com.qhit.fsaas.util.reference.ListPersonTypeReference;
import com.qhit.fsaas.util.reference.ListSeatTypeReference;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.*;

@Component
public class RedisUtil {
    @Resource
    RedisTemplate redisTemplate;

    public Integer getTid() {
        Integer tid = (Integer) redisTemplate.opsForValue().get("tid");
        if (tid == null || tid <= 0) {
            tid = 1;
        }
        return tid;
    }

    public void setTid(Integer tid) {
        redisTemplate.opsForValue().set("tid", tid);
    }

    public ArrayList<Seat> getSeatList() {
        return JSON.parseObject(redisTemplate.opsForValue().get("seatList").toString(), new ListSeatTypeReference());
    }

    public void setSeatList(List<Seat> seatList) {
        redisTemplate.opsForValue().set("seatList", JSON.toJSONString(seatList,SerializerFeature.WriteClassName));
    }

    public HashMap<Long, LinkedList<Seat>> getSeatHash() {
        Object seatHash = redisTemplate.opsForValue().get("seatHash");
        return JSON.parseObject(seatHash.toString(), new HashSeatTypeReference());
    }

    public void setSeatHash(HashMap<Long, LinkedList<Seat>> seatHash) {
        redisTemplate.opsForValue().set("seatHash", JSON.toJSONString(seatHash,SerializerFeature.WriteClassName));
    }

    public long[] getSeatCount() {
        Object seatCount = redisTemplate.opsForValue().get("seatCount");
        if (seatCount == null) {
            return null;
        }
        List<Long> seatCountOfList = JSON.parseArray(seatCount.toString(), long.class);
        return seatCountOfList.stream().mapToLong(t -> t).toArray();
    }
    public void setSeatCount(long[] seatCount) {
        redisTemplate.opsForValue().set("seatCount", JSON.toJSONString(seatCount,SerializerFeature.WriteClassName));
    }

    public List<Person> getPersonList() {
        return JSON.parseObject(redisTemplate.opsForValue().get("personList").toString(), new ListPersonTypeReference());
    }
    public void setPersonList(List<Person> personList) {
        redisTemplate.opsForValue().set("personList", JSON.toJSONString(personList,SerializerFeature.WriteClassName));
    }

    public HashMap<Long, LinkedList<Person>> getPersonHash() {
        return JSON.parseObject(redisTemplate.opsForValue().get("personHash").toString(), new HashPersonTypeReference());
    }

    public void setPersonHash(HashMap<Long, LinkedList<Person>> personHash) {
        redisTemplate.opsForValue().set("personHash", JSON.toJSONString(personHash,SerializerFeature.WriteClassName));
    }
}
