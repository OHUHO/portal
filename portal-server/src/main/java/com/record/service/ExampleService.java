package com.record.service;

import com.record.entity.Example;
import com.baomidou.mybatisplus.extension.service.IService;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-07
 */
public interface ExampleService extends IService<Example> {


    /**
     * 通过案例种类id查询案例信息
     * @param exampleType
     * @return
     */
    Example selectExampleByExampleType(Integer exampleType);
}
