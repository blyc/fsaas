package com.qhit.fsaas.util.reference;

import com.alibaba.fastjson.TypeReference;
import com.qhit.fsaas.bo.Seat;

import java.util.HashMap;
import java.util.LinkedList;

public class HashSeatTypeReference extends TypeReference<HashMap<Long, LinkedList<Seat>>> {
}
