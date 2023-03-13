package com.record.service.impl;

import com.record.entity.Type;
import com.record.mapper.TypeMapper;
import com.record.service.TypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-07
 */
@Service
public class TypeServiceImpl extends ServiceImpl<TypeMapper, Type> implements TypeService {

    @Autowired
    private TypeMapper typeMapper;


    @Override
    public List<Type> selectAllType() {
        List<Type> types = typeMapper.selectList(null);
        System.out.println("types = " + types);
        return types;
    }
}
