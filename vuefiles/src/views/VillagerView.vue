<template>
  <article class="villagerCard">
    <span id="villagerDetails">
      <img src="../assets/villagers/Daisy.png" id="vImage">
      <h1 id="vName" style="font-size: 2em;">{{villager.name}}</h1>
      <h2 id="vBirthday">Birthday: {{villager.birthday}}</h2>
      <h2 id="vSpecies">Species: {{villager.species}}</h2>
      <h2 id="vPersonality">Personality: {{villager.personality}}</h2>
      <section id="vColors">
        <h2 >Favorite Colors: {{villager.color1}}</h2>
        <h2>&</h2>
        <h2>{{villager.color2}}</h2>
      </section>
      <section id="vStyles">
        <h2>Favorite Styles: {{villager.style1}}</h2>
        <h2>&</h2>
        <h2>{{villager.style2}}</h2>
      </section>
    </span>
  </article>
</template>

<script>
export default {
  props: {
    villager: Object,
  },
};
</script>

<style>
#vImage {
  padding: 10px 50px 0px;
  width: 30%;
}
.villagerCard {
  display: flex;
  flex-direction: column;
  align-items: center;
}
#villagerDetails {
  width: 50%;
  border-radius: 30px;
  background: #dba759;
  border: 1px solid #542312;
  font-size: 1.4rem;
}
.villagerCard #vBirthday,
#vSpecies,
#vPersonality,
#vStyles,
#vColors {
  display: flex;
  justify-content: flex-start;
  padding: 0px 50px;
}
.villagerCard h2,
h3 {
  padding-right: 5px;
  margin: 1.2px;
}
</style>