<template>
	<Layout>
		
		<div class="layout-container" style="width: 100%;">
			<div class="page-header" style="max-height: 14px;"></div>
			<div class="breadcrumb-box">
				<div class="am-container">
					<ol class="am-breadcrumb">
						<li><router-link to="/news">公司动态</router-link></li>
						<li class="am-active">文章详情</li>
					</ol>
				</div>
			</div>
		</div>
		
		<div class="section">
			<div class="container" style="max-width: 1160px">
				<div class="section--header">
					<h2 class="section--title">{{article.title}}</h2>
					<p class="section--description">{{article.introduction}}</p>
				</div>
				
				<div class="join-container">
					<div class="am-g">
						<div class="am-u-md-3">
							<div class="careers--articles">
								<!--<h3 class="careers&#45;&#45;subtitle">文章信息</h3>-->
								<div class="careers_articles">
									<div class="careers_article" v-for="(article,index) in recentArticles" :key="index">
										<div class="image">
											<img style="height: 160px;" :src="article.cover" alt="">
										</div>
										<h3 class="careers_article--title">{{ article.title }}</h3>
										<div class="careers_article--text">{{article.introduction}}</div>
										<div class="careers_article--footer">
											<router-link :to="{name:'newsDetails',params:{newsId:article.articleId}}" class="link">查看更多</router-link>
										</div>
									</div>
								</div>
							</div>
						</div>
						
						<div class="am-u-md-9">
							<!--<h3 class="careers&#45;&#45;subtitle">文章内容</h3>-->
							<div class="careers--vacancies">
								<div class="am-panel-group" id="accordion">
									<div class="am-panel am-panel-default">
										<div class="am-panel-hd">
											<h4 class="am-panel-title" data-am-collapse="{parent: '#accordion', target: '#do-not-say-1'}">
												作者：{{article.author}} &nbsp;&nbsp;&nbsp;&nbsp; / &nbsp;&nbsp;&nbsp;&nbsp; 发布时间：{{article.createTime}}
											</h4>
										</div>
										<div class="am-panel-collapse am-collapse am-in">
											<div class="am-panel-bd">
												<div class="vacancies--item_content js-accordion--pane_content"
													v-html="article.contentHtml">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</Layout>
</template>

<script>
import Layout from "@/components/common/Layout";

export default {
	name: "NewsDetailsView",
	components: {Layout,},
	data(){
		return{
			article:{},
			recentArticles:[]
		}
	},
	mounted() {
		this.getArticleByArticleId(this.$route.params.newsId)
	},
	methods:{
		getArticleByArticleId(articleId){
			this.getRequest(`/findArticleByArticleId/${articleId}`).then(resp =>{
				if (resp){
					this.article = resp.data.data
					this.getRecentArticle(articleId)
				}
			})
		},
		getRecentArticle(currentArticleId){
			this.getRequest(`/findRecentArticle/${currentArticleId}`).then(resp =>{
				if (resp){
					this.recentArticles = resp.data.data;
				}
			})
		}
	}
}
</script>

<style scoped>

</style>
