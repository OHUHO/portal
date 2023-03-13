package com.record.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.record.entity.Article;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 京茶吉鹿
 * @since 2023-03-07
 */
public interface ArticleService extends IService<Article> {


    /**
     * 获取文章（分页）
     * @param pageIndex
     * @return
     */
    Page<Article> selectArticles(Integer pageIndex);


    /**
     * 通过哦文章id查询文章信息
     * @param articleId
     * @return
     */
    Article selectArticleByArticleId(Integer articleId);


    /**
     * 查找非当前文章的文章信息
     * @param currentArticleId
     * @return
     */
    List<Article> selectRecentArticle(Integer currentArticleId);
}
