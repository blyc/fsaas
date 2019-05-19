package com.qhit.fsaas.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @author jieyue-mac
 */
@Controller
public class HomeController {
    /**
     * 系统首页
     *
     * @return 主页
     */
    @GetMapping(value = {"/", "/index"})
    public String index() {
        return "index";
    }

    @GetMapping(value = {"/seat"})
    public String seat() {
        return "seatPreview/index";
    }

    @GetMapping(value = {"/air/A33A"})
    public String airA33A() {
        return "aircraft/A33A";
    }

}
