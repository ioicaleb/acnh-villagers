import Vue from 'vue';
import VueRouter from 'vue-router';
import HomeView from '../views/HomeView.vue'
import CopperView from '../views/CopperView.vue'

Vue.use(VueRouter);

const routes = [
        {
            path: '/',
            name: 'home',
            component: HomeView,
        },
        {
            path: '/copper/:villagerName',
            name: 'copper',
            component: CopperView,
        }
    ]
    const router = new VueRouter({
        mode: 'history',
        base: 'https://localhost:44318/',
        routes
    });

export default router;