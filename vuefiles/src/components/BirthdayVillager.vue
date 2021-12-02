<template>
  <aside class="birthday">
    <img 
    :src="image" />
    <h2>Happy birthday, {{ villager.name }}!</h2>
  </aside>
</template>

<script>
import VillagerServices from "../services/VillagerServices.js";

export default {
  data() {
    return {
      villager: {},
      }
  },
  computed:{
    image() {
      return `../assets/villagers/${this.villager.name}.png`
    }
  },
  created(){
      VillagerServices.getBirthday()
        .then((response) => {
          console.log("Got today's birthday villager", response.data);
          this.villager = response.data;
        })
        .catch((response) => {
          console.error("Problem getting birhday", response);
        });
  },
};
</script>

<style>
</style>