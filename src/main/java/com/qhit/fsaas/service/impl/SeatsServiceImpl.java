package com.qhit.fsaas.service.impl;

import com.qhit.fsaas.bo.Seats;
import com.qhit.fsaas.dao.SeatsMapper;
import com.qhit.fsaas.service.ISeatsService;
import com.qhit.fsaas.util.RedisUtil;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


@Service
public class SeatsServiceImpl implements ISeatsService {
    @Resource
    private SeatsMapper seatsMapper;
    @Resource
    private RedisUtil redisUtil;

    public List<Seats> selectAll(){
        return seatsMapper.selectAllSeatsWithFlag(redisUtil.getTid());
    }
}
