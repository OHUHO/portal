package com.record.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.record.entity.Company;
import com.record.mapper.CompanyMapper;
import com.record.service.CompanyService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-07
 */
@Service
public class CompanyServiceImpl extends ServiceImpl<CompanyMapper, Company> implements CompanyService {


    @Autowired
    private CompanyMapper companyMapper;


    @Override
    public Company selectCompanyInfo() {
        return companyMapper.selectOne(
                new LambdaQueryWrapper<Company>()
                        .last("limit 1")
        );
    }
}
