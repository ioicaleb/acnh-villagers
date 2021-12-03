<template>
  <aside class="villagerOfTheDay">
    <img
      v-bind:src="'../assets/villagers/'+villager.name+'.png'"
      />
      <h2>Congratulations, {{villager.name}}!</h2>
  </aside>
</template>

<script>
import VillagerServices from '../services/VillagerServices.js'

export default {
  data(){
    return{
      villager: {},
    }
  },
  created(){
      VillagerServices.getVOTD()
      .then(response => {
        console.log("Villager of the day is ", response.data);
        this.villager = response.data;
      })
      .catch(response => {
        console.error("Problem getting villager of the day", response);
      })
    }
}
</script>

<style>
.villagerOfTheDay{
  background-color: #dba759;
  color: #542312;
  border: 2px solid #542312;
  border-radius: 20px;
  padding: 20px;
  margin-bottom: 50px;
}
</style>