package com.record.controller;


import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Api(tags = "EntranceController")
@Controller
@Deprecated
public class EntranceController {

    @ApiOperation(value = "首页")
    @GetMapping({"/","/index","/index.html"})
    public String index(){
        return "index";
    }

    @ApiOperation(value = "产品中心")
    @GetMapping({"/product","/product.html"})
    public String product(){
        return "product";
    }

    @ApiOperation(value = "客户案例")
    @GetMapping({"/example","/example.html"})
    public String example(){
        return "example";
    }


    @ApiOperation(value = "新闻中心")
    @GetMapping({"/news","/news.html"})
    public String news(){
        return "news";
    }

    @ApiOperation(value = "关于我们")
    @GetMapping({"/about","/about.html"})
    public String about(){
        return "about";
    }
}
