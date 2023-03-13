package com.record.controller;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.record.entity.Article;
import com.record.service.ArticleService;
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
@Api(tags = "文章")
@RestController
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    private static final Integer PAGE_SIZE = 6;

    @ApiOperation(value = "获取所有的文章(分页)")
    @GetMapping("/findArticles/{pageIndex}")
    public Result findArticles(@PathVariable Integer pageIndex){
        /* Page<Article> page = new Page<>(pageIndex,PAGE_SIZE);
        LambdaQueryWrapper<Article> lambdaQueryWrapper = new LambdaQueryWrapper<>();
        lambdaQueryWrapper.orderByDesc(Article::getCreateTime);
        Page<Article> articlePage = articleService.page(page, lambdaQueryWrapper); */

        Page<Article> articlePage = articleService.selectArticles(pageIndex);
        return Result.success(articlePage);
    }


    @ApiOperation(value = "通过文章id查询文章信息")
    @GetMapping("/findArticleByArticleId/{articleId}")
    public Result findArticleByArticleId(@PathVariable Integer articleId){
        Article article = articleService.selectArticleByArticleId(articleId);
        return Result.success(article);
    }


    @ApiOperation(value = "查找非当前文章的文章信息")
    @GetMapping("/findRecentArticle/{currentArticleId}")
    public Result findRecentArticle(@PathVariable Integer currentArticleId){
        List<Article> list = articleService.selectRecentArticle(currentArticleId);
        return Result.success(list);
    }
}
