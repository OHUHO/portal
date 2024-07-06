import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

const routes = [
    {
        path:'/',
        redirect:'/index'
    },
    {
        path: '/index',
        name: 'index',
        component: () => import('../views/IndexView.vue')
    },
    {
        path: '/product',
        name: 'product',
        component: () => import('../views/ProductView.vue'),
    },
    {
        path: '/product/productId/:productId',
        name: 'productDetails',
        component: () => import("../views/ProductDetailsView.vue")
    },
    {
        path: '/example',
        name: 'example',
        component: () => import('../views/ExampleView.vue')
    },
    {
        path: '/news',
        name: 'news',
        component: () => import('../views/NewsView.vue')
    },
    {
        path: '/news/newsId/:newsId',
        name: 'newsDetails',
        component: () => import('../views/NewsDetailsView.vue')
    },
    {
        path: '/about',
        name: 'about',
        component: () => import('../views/AboutView.vue')
    }
]

const router = new VueRouter({
    routes
})

export default router
