<template>
	<Layout>
		<!--<div class="product-background"></div>-->
		
		<div class="layout-container" style="width: 100%">
			<div class="solution-page">
				<div class="container" style="text-align: center">
					<h2>自主创新跨平台企业级解决方案</h2>
					<p>光明网曾考虑过通过原生App来实现移动化，但是由于无法复用原始业务流程和数据就放弃了，直到选用了云适配整体解决方案后，可以很方便的在Enterplorer上使用一个帐号登录我们的系统，通过VPN随时进入内网。</p>
				</div>
			</div>
		</div>
		<div class="layout-container" style="width: 100%">
			<div class="breadcrumb-box">
				<div class="am-container">
					<ol class="am-breadcrumb">
						<li><router-link to="/">首页</router-link></li>
						<li class="am-active">产品中心</li>
					</ol>
				</div>
			</div>
		</div>
		
		<div class="section">
			<div class="container" style="max-width: 1160px">
				<div class="section--header">
					<h2 class="section--title">解决方案案例展示</h2>
					<p class="section--description">
						全球独创专利技术：一行代码部署，帮助企业快速安全地将现有PC版网页适配成HTML5跨屏网页，跨平台的企业统一办公 门户，快捷的移动适配开发能力，完备的数据安全保护
					</p>
				</div>
				
				<div class="solution-container">
					<div data-am-widget="tabs" class="am-tabs ">
						<ul class="am-tabs-nav am-cf">
							<li v-for="(tab,index) in tabList"
								:key="index"
								@click.prevent="changeTab(index,tab.typeId)"
								:class="tabIndex === index ? 'am-active':''">
								<a href="#">{{tab.typeName}}</a>
							</li>
						</ul>
						<div class="am-tabs-bd">
							<div class=am-tabs-tab>
								<div class="am-tab"
									v-for="(goods,index) in goodsList"
									:key="index"
									@click="handleDetails(goods.typeDetaisId)">
									<img :src="goods.imageUrl1" alt="">
									<p>{{goods.title}}</p>
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
	name: "ProductView",
	components: {Layout},
	data(){
		return{
			tabList:[],
			list:[],
			tabIndex: 0,
			goodsList:[],
		}
	},
	mounted() {
		this.getTabList()
		this.getGoodsList(1)
	},
	methods:{
		getTabList(){
			this.getRequest("/findAllType").then(resp =>{
				if (resp){
					this.tabList = resp.data.data
					//console.log(resp.data.data)
				}
			})
		},
		changeTab(index,typeId){
			this.tabIndex = index
			console.log(typeId)
			this.getGoodsList(typeId)
		},
		getGoodsList(typeId){
			this.getRequest(`/findTypeDetailsByTypeId/${typeId}`).then(resp =>{
				if (resp){
					this.goodsList = resp.data.data
					//console.log(resp.data.data)
				}
			})
		},
		handleDetails(productId){
			this.$router.push({path:`/product/productId/${productId}`})
		}
	}
}
</script>

<style scoped>

</style>
