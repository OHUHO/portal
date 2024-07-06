<template>
	<!-- :key="$route.fullPath" 解决了路由前缀相同时跳转不刷新 -->
  <router-view :key="$route.fullPath"/>
</template>

