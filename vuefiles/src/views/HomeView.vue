<template>
  <article class="home">
    <section class="featuredVillagers">
      <birthday-villager id="birthday"></birthday-villager>
      <villager-of-the-day id="votd"></villager-of-the-day>
    </section>
    <section class="searchBars">
      <copper-search id="nameSearch"> </copper-search>
      <rover-gift id="giftFinder"></rover-gift>
      <katie-matchmaker id="matchmaker"></katie-matchmaker>
    </section>
  </article>
</template>

<script>
import BirthdayVillager from "../components/BirthdayVillager.vue";
import CopperSearch from "../components/CopperSearch.vue";
import KatieMatchmaker from "../components/KatieMatchmaker.vue";
import RoverGift from "../components/RoverGift.vue";
import VillagerOfTheDay from "../components/VillagerOfTheDay.vue";
import VillagerServices from "../services/VillagerServices.js";

export default {
  data() {
    return {};
  },
  components: {
    CopperSearch,
    RoverGift,
    KatieMatchmaker,
    BirthdayVillager,
    VillagerOfTheDay,
  },
  methods: {},
  created() {
    VillagerServices.getAllVillagers().then((response) => {
      console.log("Got all villagers");
      this.$store.commit('GET_VILLAGER_LIST', response.data);
    });
  },
};
</script>

<style>
article .home{
display: grid;
grid-template-areas: 
"featured"
"searchBars";
}
.featuredVillagers{
  grid-area: featured;
  display: flex;
  justify-content: space-around;
}
.searchBars{
  grid-area: searchBars;
  display: flex;
  justify-content: space-around;
  align-items: flex-start;
}
#name,
button,
select {
  font-family: "Caveat", cursive;
  font-size: 1.5rem;
  border: 1px solid #542312;
  background-color: #f3d77d;
  border-radius: 10px;
  margin: 10px;
  height: 2.2rem;
}
</style>