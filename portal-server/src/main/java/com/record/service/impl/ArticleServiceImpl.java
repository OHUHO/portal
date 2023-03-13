package com.record.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.record.entity.Article;
import com.record.mapper.ArticleMapper;
import com.record.service.ArticleService;
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
public class ArticleServiceImpl extends ServiceImpl<ArticleMapper, Article> implements ArticleService {

    @Autowired
    private ArticleMapper articleMapper;

    private static final Integer PAGE_SIZE = 6;


    @Override
    public Page<Article> selectArticles(Integer pageIndex) {
        Page<Article> page = new Page<>(pageIndex,PAGE_SIZE);
        LambdaQueryWrapper<Article> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.orderByDesc(Article::getCreateTime);
        return articleMapper.selectPage(page, lambdaQueryWrapper);
    }

    @Override
    public Article selectArticleByArticleId(Integer articleId) {

        return articleMapper.selectById(articleId);
    }

    @Override
    public List<Article> selectRecentArticle(Integer currentArticleId) {

        return articleMapper.selectList(
                new LambdaQueryWrapper<Article>()
                        .notIn(Article::getArticleId,currentArticleId)
                        .orderByDesc(Article::getCreateTime)
                        .last("limit 2")
        );
    }
}
