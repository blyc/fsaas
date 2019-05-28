package com.qhit.fsaas.controller;

import com.alibaba.fastjson.JSONObject;
import com.google.common.collect.Lists;
import com.qhit.fsaas.bo.*;
import com.qhit.fsaas.util.MainUtil;
import com.qhit.fsaas.util.RedisUtil;
import com.qhit.fsaas.util.excelUtils.excel.ExportExcel;
import com.qhit.fsaas.util.excelUtils.excel.ImportExcel;
import org.apache.poi.openxml4j.exceptions.InvalidFormatException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

/**
 * @author jieyue-mac
 */
@RestController
@RequestMapping(value = "template")
public class AssignedForAllPlaneController {
    @Resource
    RedisUtil redisUtil;
    @Resource
    MainUtil mainUtil;

    /**
     * 下载空模板
     *
     * @param request
     * @param response
     */
    @RequestMapping(value = "/nullTemplate", method = RequestMethod.GET)
    public void downtemplate(HttpServletRequest request, HttpServletResponse response) {
        try {
            String fileName = "航班座位信息导入模板.xlsx";
            List<PersonTemplate> list = Lists.newArrayList();
            new ExportExcel("航班座位信息导入模板", PersonTemplate.class, 2).write(request, response, fileName).dispose();
            return;
        } catch (Exception e) {
            return;
        }
    }


    /**
     * 导出
     *
     * @param request
     * @param response
     */
    @RequestMapping(value = "/export", method = RequestMethod.GET)
    public void exportFile(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String fileName = "航班座位分配信息.xlsx";

        List<PersonTemplate> list = new ArrayList<>();
        PersonTemplate personTemplate = new PersonTemplate("高洁", "windows", "1");
        list.add(personTemplate);


        new ExportExcel("航班座位分配信息", PersonTemplate.class).setDataList(list).write(request, response, fileName).dispose();

    }

    /**
     * 导入
     *
     * @param file
     * @param request
     * @return
     */
    @RequestMapping(value = "/import", method = RequestMethod.POST)
    public JSONObject importFile(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request) {
        JSONObject jsonObject = new JSONObject();
        boolean ok = false;

        try {
            ImportExcel ei = new ImportExcel(file, 1, 0);
            List<PersonTemplate> list = ei.getDataList(PersonTemplate.class);
            List<Passengers> passengersList = new ArrayList<>();

            for (int i = 0; i < list.size(); i++) {
                List<Passenger> passenger_info = new ArrayList<>();
                long groupId = new Date().getTime();
                for (PersonTemplate personTemplate : list) {
                    if (String.valueOf(i + 1).equals(personTemplate.getGroup())) {
                        Passenger passenger = new Passenger(groupId + "", personTemplate.getName(), personTemplate.getPreferred());
                        passenger_info.add(passenger);
                    }
                }
                if (passenger_info.size() != 0) {
                    Passengers passengers = new Passengers(passenger_info.size(),passenger_info);
                    passengersList.add(passengers);
                }
                Thread.sleep(1);
            }

            List<Passengers> passengers = assignedSeatForAllPlane(passengersList);
            if (passengers!=null&&passengers.size()>0){
                ok = true;
            }

            if (ok) {
                jsonObject.put("status", "4");
                jsonObject.put("message", "没有合适的座位");
            } else {
                jsonObject.put("status", "1");
                jsonObject.put("message", "分配座位成功");

            }
        } catch (IllegalAccessException | InvalidFormatException | IOException | InstantiationException | InterruptedException e) {
            e.printStackTrace();
        }
        return jsonObject;
    }

    private List<Passengers> assignedSeatForAllPlane(List<Passengers> passengers) {

        boolean isFound = false;


















        //insert分配记录
//        mainUtil.batchInsert(passengers);

        mainUtil.showSeatCount();
        if (isFound) {
            return passengers;
        } else {
            return null;
        }
    }
}
