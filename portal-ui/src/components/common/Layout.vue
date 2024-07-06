<template>
	<main class="page-wrapper">
		<Header/>
		
		<div class="main-content">
			<slot></slot>
		</div>
	
		<Footer/>
	</main>
</template>

<script>
import Header from "@/components/common/header/Header";
import Footer from "@/components/common/footer/Footer";
export default {
	name: "Layout",
	components:{Header, Footer}
}
</script>

<style scoped>
.main-content{
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
}
</style>
