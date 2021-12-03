<template>
  <section class="search">
    <img src="../assets/villagers/Copper.png" />
    <h3>Copper Finds 'Em</h3>
    <p>
      Somebody new coming to the neighborhood? Don't sweat it out just because
      you've never heard the name before. Copper knows everything about
      everyone. Let him track down the newbie and put your mind at ease.
    </p>
    <form class="nameSearch">
      <label for="name">Name: </label>
      <input id="name" v-model="nameInput" />
      <button
        type="submit"
        v-bind:disabled="!nameInput"
        v-on:click.prevent="getVillager($event)">
        Search
      </button>
    </form>
    <small style="color: red; font-weight: bold" v-show="invalidName"
      >There's nobody by that name. Check your spelling and try again</small
    >
  </section>
</template>

<script>
import VillagerServices from "../services/VillagerServices.js";

export default {
  name: "SearchForm",
  data() {
    return {
      nameInput: "",
      invalidName: false,
    };
  },
  methods: {
    getVillager(event) {
      console.log(event);
      VillagerServices.getVillagerByName(this.nameInput)
        .then((response) => {
          console.log("Found villager", response.data);
          this.$router.push(`/copper/${response.data.name}`);
        })
        .catch((response) => {
          console.error("Could not find villager", response);
          this.invalidName = true;
        });
    },
  },
};
</script>

<style>
.search {
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #dba759;
  color: #542312;
  
  border: 2px solid #542312;
  border-radius: 20px;
  padding: 5px;
  width: 30%;
  text-align: left;
}
.search h3 {
  font-size: 2rem;
}
.search p,
.search small {
  padding-left: 30px;
  padding-right: 30px;
  font-size: 1.4rem;
}
.search img {
  height: 20em;
}
</style>
