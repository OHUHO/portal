<template>
	<div class="footer">
		<div style="background-color:#383d61" class="footer--bg"></div>
		<div class="footer--inner">
			<div class="am-g">
				<div class="am-u-md-3 ">
					<div class="footer_main--column">
						<strong class="footer_main--column_title">产品中心</strong>
						<ul class="footer_navigation">
							<li class="footer_navigation--item"><router-link to="/product" class="footer_navigation--link">家用电梯</router-link></li>
							<li class="footer_navigation--item"><router-link to="/product" class="footer_navigation--link">别墅电梯</router-link></li>
							<li class="footer_navigation--item"><router-link to="/product" class="footer_navigation--link">观光电梯</router-link></li>
						</ul>
					</div>
				</div>
				<div class="am-u-md-6 ">
					<div class="footer_main--column">
						<strong class="footer_main--column_title">关于我们</strong>
						<div class="footer_about">
							<p class="footer_about--text">
								云适配(AllMobilize Inc.) 是全球领先的HTML5企业移动化解决方案供应商，由前微软美国总部IE浏览器核心研发团队成员及移动互联网行业专家在美国西雅图创立.
							</p>
						</div>
					</div>
				</div>
				<div class="am-u-md-3 ">
					<div class="footer_main--column">
						<strong class="footer_main--column_title">联系详情</strong>
						<ul class="footer_contact_info">
							<li class="footer_contact_info--item"><i class="am-icon-phone"></i><span>服务专线：15284734274</span></li>
							<li class="footer_contact_info--item"><i class="am-icon-map-marker"></i><span>四川省成都市高新区</span></li>
							<li class="footer_contact_info--item"><i class="am-icon-clock-o"></i><span>周一 ~ 周日, 8:00 - 23:00 </span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
export default {
	name: "Footer"
}
</script>

<style scoped>

</style>
