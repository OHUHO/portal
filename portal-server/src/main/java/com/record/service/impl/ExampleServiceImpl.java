package com.record.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.record.entity.Example;
import com.record.mapper.ExampleMapper;
import com.record.service.ExampleService;
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
public class ExampleServiceImpl extends ServiceImpl<ExampleMapper, Example> implements ExampleService {


    @Autowired
    private ExampleMapper exampleMapper;


    @Override
    public Example selectExampleByExampleType(Integer exampleType) {
        return exampleMapper.selectOne(
                new LambdaQueryWrapper<Example>()
                        .eq(Example::getExampleType,exampleType)
        );
    }
}
