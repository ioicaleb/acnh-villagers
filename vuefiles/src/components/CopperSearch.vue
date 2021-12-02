<template>
  <div class="search">
    <img src="../assets/villagers/Copper.png" />
    <h3>Copper Finds 'Em</h3>
    <p>Somebody new coming to the neighborhood? Don't sweat it out just because you've never heard the name before. 
      Copper knows everything about everyone. 
      Let him track down the newbie and put your mind at ease.    </p>
      <label for="name">Name: </label>
      <input id="name" v-model="nameInput"/>
      <button type="submit" v-bind:disabled="!nameInput" v-on:click="getVillager($event)">Search</button>
      <small style="color: red; font-weight: bold" v-show="invalidName">There's nobody by that name. Check your spelling and try again</small>
  </div>
</template>

<script>
import VillagerServices from '../services/VillagerServices.js'
export default {
  name: 'SearchForm',
  data() {
    return{
      nameInput: '',
      invalidName: false,
      }
  },
  methods:
  {
    getVillager(event){
      console.log(event);
      VillagerServices.getVillagerByName(this.nameInput)
      .then(response => {
        console.log("Found villager", response.data)
        this.$router.push(`/copper/${response.data.name}`)
      })
      .catch(response => {
        console.error("Could not find villager", response);
        this.invalidName = true;
      })
    }
  }
}
</script>

<style>
.search{
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #e29578;
  border-radius: 20px;
  font-size: 36px;
  padding: 5px;
  text-align: left;
}
#name{
  font-family: 'Caveat', cursive;
  font-size: 24px;
  background-color: burlywood;
  border: 2px solid sandybrown;
  color: black;
  border-radius: 10px;
  display: flex;
  justify-content: space-between;
  align-content: flex-end;
}
.search button{
  display: flex;
  flex-direction: row;
  font-family: 'Caveat', cursive;
  font-size: 24px;
  border: 2px solid burlywood;
  background-color: burlywood;
  border-radius: 10px;
}
.search img{
  height: 20%;
}
</style>
