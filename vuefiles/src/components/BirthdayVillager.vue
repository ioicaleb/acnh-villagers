<template>
  <aside class="birthday">
    <router-link v-bind:to="{name:'Copper', params: {villagerName: villager.Name}}">
    <img v-bind:src="image" />
    </router-link>
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
.birthday{
  background-color: #dba759;
  color: #542312;
  border: 2px solid #542312;
  border-radius: 20px;
  padding: 20px;
  margin-bottom: 50px;
}
</style>