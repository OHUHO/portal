package com.record.controller;

import com.record.entity.Company;
import com.record.service.CompanyService;
import com.record.utils.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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

@Api(tags = "公司信息")
@RestController
public class CompanyController {

    @Autowired
    private CompanyService companyService;


    @ApiOperation(value = "查找公司信息")
    @GetMapping("/findCompanyInfo")
    public Result findCompanyInfo(){
        Company company = companyService.selectCompanyInfo();
        return Result.success(company);
    }
}
