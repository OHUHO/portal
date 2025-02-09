package com.record.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.record.entity.TypeDetails;
import com.record.mapper.TypeDetailsMapper;
import com.record.service.TypeDetailsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import io.swagger.models.auth.In;
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
public class TypeDetailsServiceImpl extends ServiceImpl<TypeDetailsMapper, TypeDetails> implements TypeDetailsService {

    @Autowired
    private TypeDetailsMapper typeDetailsMapper;


    @Override
    public List<TypeDetails> selectTypeDetailsByTypeId(Integer typeId) {
        return typeDetailsMapper.selectList(
                new LambdaQueryWrapper<TypeDetails>()
                        .eq(TypeDetails::getTypeId,typeId)
        );
    }

    @Override
    public TypeDetails selectTypeDetailsByTypeDetailsId(Integer typeDetailsId) {
        return typeDetailsMapper.selectById(typeDetailsId);
    }
}
