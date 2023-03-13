package com.record.controller;

import com.record.entity.TypeDetails;
import com.record.service.TypeDetailsService;
import com.record.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
@Api(tags = "电梯种类详情")
public class TypeDetailsController {

    @Autowired
    private TypeDetailsService typeDetailsService;


    @ApiOperation(value = "通过电梯种类id查询所有信息")
    @GetMapping("/findTypeDetailsByTypeId/{typeId}")
    public Result findTypeDetailsByTypeId(@PathVariable Integer typeId){
        List<TypeDetails> typeDetails = typeDetailsService.selectTypeDetailsByTypeId(typeId);
        return Result.success(typeDetails);
    }


    @ApiOperation(value = "通过产品id获取信息")
    @GetMapping("/findTypeDetailsByTypeDetailsId/{typeDetailsId}")
    public Result findTypeDetailsByTypeDetailsId(@PathVariable Integer typeDetailsId){
        TypeDetails typeDetails = typeDetailsService.selectTypeDetailsByTypeDetailsId(typeDetailsId);
        return Result.success(typeDetails);
    }
}
