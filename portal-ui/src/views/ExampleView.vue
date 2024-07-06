<template>
	<Layout>
		<div class="layout-container" style="width: 100%">
			<div class="page-header">
				<div class="am-container">
					<h1 class="page-header-title">客户案例</h1>
				</div>
			</div>
			<div class="breadcrumb-box">
				<div class="am-container">
					<ol class="am-breadcrumb">
						<li><router-link to="/">首页</router-link></li>
						<li class="am-active">客户案例</li>
					</ol>
				</div>
			</div>
		</div>
		
		<div class="section example">
			<div class="container" style="max-width: 1160px; margin: 0 auto">
				<div class="section--header">
					<h2 class="section--title">全球首创 自主创新</h2>
					<p class="section--description">
						Enterplorer Studio是一套面向企业级移动信息化建设的开发平台。集聚开发、测试、
						<br>打包、发布于一体的移动化开发综合平台。
					</p>
				</div>
				
				<div class="example-container">
					<div class="am-tabs">
						<ul class="am-tabs-nav am-nav am-nav-tabs am-g">
							<li class="am-u-md-2"
								v-for="(tab,index) in tabList"
								:key="index"
								@click.prevent="changeTab(index)"
								:class="tabIndex === index ? 'am-active':''">
								<a href="#"><i :class="tab.icon"></i>{{tab.name}}</a>
							</li>
						</ul>
						
						<div class="tabs">
							<div class="tab" v-for="(image,index) in list" :key="index">
								<img :src="image" alt="">
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
	name: "ExampleView",
	components: {Layout},
	data(){
		return{
			tabIndex: 0,
			tabList:[
				{id:1,name:'主要案例',icon:'am-icon-map-o'},
				{id:1,name:'客户案例一',icon:'am-icon-scribd'},
				{id:1,name:'客户案例二',icon:'am-icon-odnoklassniki'},
				{id:1,name:'客户案例三',icon:'am-icon-building-o'},
				{id:1,name:'客户案例四',icon:'am-icon-hand-scissors-o'},
				{id:1,name:'客户案例五',icon:'am-icon-camera'},
			],
			list:[],
		}
	},
	mounted() {
		this.findExampleByExampleType(0)
	},
	methods:{
		changeTab(index){
			this.tabIndex = index
			//console.log(index)
			this.findExampleByExampleType(index)
		},
		findExampleByExampleType(exampleType){
			this.getRequest(`/findExampleByExampleType/${exampleType}`).then(resp =>{
				if (resp){
					const temp = resp.data.data
					//console.log(temp)
					const list = [];
					for (let i = 1; i < 17; i++) {
						// 判断是否为空
						if (temp['image'+ i] != null){
							list.push(temp['image'+ i])
						}
					}
					this.list = list
					//console.log(this.list)
				}
			})
		}
	}
}
</script>

<style scoped>

</style>
