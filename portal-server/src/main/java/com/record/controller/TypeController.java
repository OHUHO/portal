package com.record.controller;

import com.record.entity.Type;
import com.record.service.TypeService;
import com.record.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-07
 */
@RestController
@Api(tags = "电梯类型")
public class TypeController {

    @Autowired
    private TypeService typeService;


    @ApiOperation(value = "获取所有的电梯种类")
    @GetMapping("/findAllType")
    public Result findAllType(){
        List<Type> types = typeService.selectAllType();
        return Result.success(types);
    }

}
