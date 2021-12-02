<template>
  <section>
    <villager-view v-bind:villager="villager" />
  </section>
</template>

<script>
import VillagerView from "./VillagerView.vue";
import VillagerServices from "../services/VillagerServices.js";

export default {

  data(){
    return{
      villager: {}
    }
  },
  components: {
    VillagerView,
  },
created() {
  VillagerServices.getVillagerByName(this.$route.params.villagerName)
      .then(response => {
        console.log("Found villager", response.data)
        this.villager = response.data;
      })
      .catch(response => {
        console.error("Could not find villager", response);
      })
    },
};
</script>

<style>
</style>