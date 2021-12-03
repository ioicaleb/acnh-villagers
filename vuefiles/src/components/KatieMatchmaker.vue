<template>
  <section class="matchmaker">
    <img src="../assets/villagers/Katie.png" />
    <h3>Katie Matchmakes</h3>
    <p></p>
    <label for="Personality">Personality:</label>
    <select id="Personality" v-model="personality">
      <option>Cranky</option>
      <option>Lazy</option>
      <option>Jock</option>
      <option>Smug</option>
      <option>Normal</option>
      <option>Sisterly</option>
      <option>Snooty</option>
      <option>Peppy</option>
    </select>
    <label for="Species">Species:</label>
    <select id="Species" v-model="species">
      <option>Alligator</option>
      <option>Anteater</option>
      <option>Bear</option>
      <option>Bird</option>
      <option>Bull</option>
      <option>Cat</option>
      <option>Chicken</option>
      <option>Cow</option>
      <option>Cub</option>
      <option>Deer</option>
      <option>Dog</option>
      <option>Duck</option>
      <option>Eagle</option>
      <option>Elephant</option>
      <option>Frog</option>
      <option>Goat</option>
      <option>Gorilla</option>
      <option>Hamster</option>
      <option>Hippo</option>
      <option>Horse</option>
      <option>Kangaroo</option>
      <option>Koala</option>
      <option>Lion</option>
      <option>Monkey</option>
      <option>Mouse</option>
      <option>Octopus</option>
      <option>Ostrich</option>
      <option>Penguin</option>
      <option>Pig</option>
      <option>Rabbit</option>
      <option>Rhino</option>
      <option>Sheep</option>
      <option>Squirrel</option>
      <option>Tiger</option>
      <option>Wolf</option>
    </select>
    <button
      type="submit"
      v-bind:disabled="!selectInput"
      v-on:click="getVillagers()"
    >
      Match Me!
    </button>
  </section>
</template>

<script>
import VillagerServices from "../services/VillagerServices.js";

export default {
  data() {
    return {
      personality: "",
      species: "",
    };
  },
  computed: {
    selectInput() {
      return this.personality || this.species;
    },
  },
  methods: {
    getVillagers() {
      let filteredVillagers = [];
      if (this.personality) {
        VillagerServices.getVillagerByPersonality(this.personality)
          .then((response) => {
            filteredVillagers = response.data.slice();
            console.log(`Got all ${this.personality} villagers`, filteredVillagers);
            filteredVillagers = this.species ? filteredVillagers.filter((v) => v.species === this.species) : filteredVillagers;
            this.$store.commit("FILTER_VILLAGER_LIST", filteredVillagers);
          })
          .catch((response) => {
            console.error("Could not get personalities", response);
          });
      }
      else if (this.species) {
        VillagerServices.getVillagerBySpecies(this.species)
          .then((response) => {
            filteredVillagers = response.data.slice();
            console.log(`Got all ${this.species} villagers`, filteredVillagers);
            this.$store.commit("FILTER_VILLAGER_LIST", filteredVillagers);
          })
          .catch((response) => {
            console.error("Could not get species", response);
          });
      }
      console.log(
        `Got all ${this.personality} ${this.species} villagers`, this.$store.$state.filteredVillagers[0]);
    },
  },
};
</script>

<style>
.matchmaker {
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
.matchmaker {
  font-size: 2rem;
}
.matchmaker p,
.matchmaker small {
  padding-left: 30px;
  padding-right: 30px;
  font-size: 1.4rem;
}
.matchmaker select {
  display: flex;
  flex-direction: row;
}
.matchmaker img {
  height: 10em;
}
</style>