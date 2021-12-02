<template>
  <div id="app">
    <img id="topLogo" src="./assets/NewHorizons.png" />
    <router-view />
  </div>
</template>

<script>


export default {
  name: "App",
  data() {
    return {
    };
  },
};
</script>

<style>
@import url("https://fonts.googleapis.com/css2?family=Caveat&display=swap");

html {
  font-family: "Caveat", cursive;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  background-color: #83c5be;
  color: #816359;
  margin-top: 60px;
}

body {
  display: flex;
  flex-flow: column wrap;
}

#topLogo {
  height: 200px;
}

.featuredVillagers{
  display: flex;
  flex-flow: wrap;
  justify-content: space-evenly;
}

.searchBars{
  display: flex;
  flex-flow: wrap;
  justify-content: space-evenly;
  flex-basis: 30% 30% 30%;
}
</style>
