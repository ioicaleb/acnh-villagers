<template>
  <article>
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
article{
display: grid;
grid-template-areas: 
"featured"
"searchBars";
}
.featuredVillagers{
  grid-area: featured;
}
.searchBars{
  grid-area: searchBars;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-evenly;
}
</style>