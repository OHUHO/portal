package com.record.controller;

import com.record.entity.Example;
import com.record.service.ExampleService;
import com.record.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-07
 */
@Api(tags = "客户案例")
@RestController
public class ExampleController {

    @Autowired
    private ExampleService exampleService;


    @ApiOperation(value = "通过案例种类id查询案例")
    @GetMapping("/findExampleByExampleType/{exampleType}")
    public Result findExampleByExampleType(@PathVariable Integer exampleType){
        Example example = exampleService.selectExampleByExampleType(exampleType);
        return Result.success(example);
    }

}
