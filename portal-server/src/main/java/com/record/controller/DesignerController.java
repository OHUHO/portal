package com.record.controller;

import com.record.entity.Designer;
import com.record.service.DesignerService;
import com.record.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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
@Api(tags = "设计师")
@RestController
public class DesignerController {


    @Autowired
    private DesignerService designerService;


    @ApiOperation(value = "查询所有的设计师")
    @GetMapping("/findDesigners")
    public Result findDesigners(){
        List<Designer> list = designerService.selectDesigners();
        return Result.success(list);
    }
}
