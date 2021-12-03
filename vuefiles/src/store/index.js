import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    villagers: [],
    filteredVillagers: [],
  },
  mutations: {
    GET_VILLAGER_LIST(state, data) {
      state.villagers = data
    },
    FILTER_VILLAGER_LIST(state, data) {
      state.filteredVillagers = data;
    }
  },
  actions: {
  },
  modules: {
  }
})
