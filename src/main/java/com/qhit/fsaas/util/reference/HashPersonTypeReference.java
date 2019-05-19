package com.qhit.fsaas.util.reference;

import com.alibaba.fastjson.TypeReference;
import com.qhit.fsaas.bo.Person;
import com.qhit.fsaas.bo.Seat;

import java.util.HashMap;
import java.util.LinkedList;

public class HashPersonTypeReference extends TypeReference<HashMap<Long, LinkedList<Person>>> {
}
