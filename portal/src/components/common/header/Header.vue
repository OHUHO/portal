<template>
	<div class="header-wrapper" >
		<div class="header">
			<div class="header-left">
				<img src="../../../assets/images/logo.png" alt="">
			</div>
			<div class="header-mid">
				<div class="header-item">
					<i style="color:#7c6aa6" class="contact-icon am-icon-phone"></i>
					<div class="item">
						<strong>15284734573</strong>
						<span>周一 ~ 周五, 8:30 - 17:30</span>
					</div>
				</div>
				<div class="header-item">
					<i style="color:#7c6aa6" class="contact-icon am-icon-map-marker"></i>
					<div class="item">
						<strong>四川省成都市高新区</strong>
						<span>四川XXXX有限公司</span>
					</div>
				</div>
			</div>
			<div class="header-right">
				<a href="tel:+18583266628" class="">
					<button type="button" >联系我们</button>
				</a>
			</div>
		</div>
		
		<div class="nav-wrapper header-default">
			<div class="nav">
				<ul class="am-nav am-nav-pills am-nav-justify">
					<li><router-link class="router" to="/index">网站首页</router-link></li>
					<li><router-link class="router" to="/product">产品中心</router-link></li>
					<li><router-link class="router" to="/example">客户案例</router-link></li>
					<li><router-link class="router" to="/news">公司动态</router-link></li>
					<li><router-link class="router" to="/about">关于我们</router-link></li>
				</ul>
			</div>
		</div>
	</div>
</template>

<script>
import AppFunctions from "@/utils/AppFunctions";
export default {
	name: "Header",
	components: {},
	data(){
		return{
			AppFunctions,
			
		}
	},
	methods: {
		toggleStickyHeader() {
			const scrolled = document.documentElement.scrollTop;
			if (scrolled > 100) {
				AppFunctions.addClass('.header-default', 'sticky');
			} else if (scrolled <= 100) {
				AppFunctions.removeClass('.header-default', 'sticky');
			}
		},
	},
	created() {
		window.addEventListener('scroll', this.toggleStickyHeader);
	},
	mounted() {
		this.toggleStickyHeader();
	},
	beforeDestroy() {
		window.removeEventListener('scroll', this.toggleStickyHeader);
	}
	
}
</script>

<style scoped>
.router.router-link-active{
	/*color: #fff;*/
	/*background-color: #0e90d2;*/
	/*border: 1px solid #0e90d2;*/
	cursor: default;
	
	color: #0e90d2;
}

</style>
