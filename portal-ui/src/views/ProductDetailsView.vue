<template>
	<Layout>
		<div class="gallery-box" v-if="title !== '' && photos.length > 0">
			
			<div class="layout-container" style="width: 100%">
				<div class="solution-page">
					<div class="container">
						<h2>{{title}}</h2>
						<p>{{introduction}}</p>
					</div>
				</div>
			</div>
			
			<div class="gallery">
				<div class="active-photo" :style="'background-image: url('+ photos[activePhoto]+');'">
					<button type="button"
						aria-label="Previous Photo"
						class="previous"
						@click="previousPhoto()">
						◀
					</button>
					<button type="button"
						aria-label="Next Photo"
						class="next"
						@click="nextPhoto()">
						▶
					</button>
				</div>
				<div class="thumbnails">
					<div v-for="(photo, index) in photos"
						:key="index"
						:src="photo"
						@click="activePhoto = index"
						:class="{'active': activePhoto === index}"
						:style="'background-image: url('+photo+')'">
					</div>
				</div>
			</div>
		</div>
		
	</Layout>
</template>

<script>
import Layout from "@/components/common/Layout";
export default {
	name: "ProductDetailsView",
	components: {Layout},
	data(){
		return{
			title: '',
			introduction:'',
			activePhoto: 0,
			photos: []
		}
	},
	mounted() {
		this.getProductById(this.$route.params.productId)
		/*document.addEventListener("keydown", (event) => {
			if (event.which === 37)
				this.previousPhoto()
			if (event.which === 39)
				this.nextPhoto()
		})*/
	},
	methods:{
		getProductById(typeDetailsId){
			this.getRequest(`/findTypeDetailsByTypeDetailsId/${typeDetailsId}`).then(resp =>{
				if (resp){
					const temp = resp.data.data
					this.title = temp.title
					this.introduction = temp.introduction
					console.log(temp)
					
					const photos = [];
					for (let i = 1; i < 6; i++) {
						// 判断是否为空
						if (temp['imageUrl'+ i] != null){
							// 判断是否有重复
							if (!photos.includes(temp['imageUrl'+ i])){
								photos.push(temp['imageUrl'+ i])
							}
						}
					}
					this.photos = photos
					//console.log(this.photos)
				}
				//console.log(this.produce)
			})
		},
		nextPhoto () {
			this.activePhoto = ( this.activePhoto+1 < this.photos.length ? this.activePhoto+1 : 0 )
		},
		previousPhoto () {
			this.activePhoto = ( this.activePhoto-1 >= 0 ? this.activePhoto-1 : this.photos.length-1 )
		}
	}
}
</script>

<style scoped>

* {
	outline: none;
	box-sizing: border-box;
}

.gallery-box {
	display: flex;
	flex-direction: column;
	align-items: center;
	overflow: auto;
	/*background-color: #5c4084;*/
	/*background-color: rgba(16 18 27 / 10%);*/
	text-align: center;
	width: 100%;
}

.gallery-box .gallery {
	width: 80%;
	display: flex;
	flex-direction: column;
	background-color: #ffffff;
	padding: 4px 4px 6px;
	border-radius: 8px;
	margin-bottom: 30px;
}
.gallery-box .gallery .active-photo {
	width: 100%;
	margin-bottom: 5px;
	padding-bottom: 65%;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	border: 2px solid #fff;
	position: relative;
}

.gallery-box .gallery .active-photo button {
	border: none;
	background-color: transparent;
	font-size: 30px;
	/*color: #fff;*/
	color: #59bcdb;
	opacity: 0.5;
	position: absolute;
	outline: none;
	height: 100%;
}

.gallery-box .gallery .active-photo:hover {
	opacity: 1;
}
.gallery-box .gallery .active-photo .previous {
	padding: 0 1em 0 0.7em;
	left: 0;
	background: -moz-linear-gradient(left,  rgba(0,0,0,0.5) 0%, rgba(0,0,0,0) 100%);
	background: -webkit-linear-gradient(left,  rgba(0,0,0,0.5) 0%,rgba(0,0,0,0) 100%);
	background: linear-gradient(to right,  rgba(0,0,0,0.5) 0%,rgba(0,0,0,0) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#80000000', endColorstr='#00000000',GradientType=1 );
}
.gallery-box .gallery .active-photo .next {
	padding: 0 0.7em 0 1em;
	right: 0;
	background: -moz-linear-gradient(left,  rgba(0,0,0,0) 0%, rgba(0,0,0,0.5) 100%);
	background: -webkit-linear-gradient(left,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.5) 100%);
	background: linear-gradient(to right,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.5) 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#80000000',GradientType=1 );
}

.gallery-box .gallery .thumbnails {
	display: grid;
	grid-template-columns: repeat(auto-fill, minmax(100px, 1fr));
	grid-gap: 4px;
}
.thumbnails div {
	border: 2px solid #fff;
	outline: 2px solid #fff;
	cursor: pointer;
	padding-bottom: 65%;
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	opacity: 1;
}
.thumbnails:hover {
	/*opacity: 0.6;*/
 }
.thumbnails .active {
	outline-color: #59bcdb;
	opacity: 0.6;
 }

</style>
