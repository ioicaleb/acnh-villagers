<template>
  <div id="app">
    <router-link :to="{name: 'Home'}"><img id="topLogo" src="./assets/NewHorizons.png" /></router-link>
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
#topLogo {
  height: 200px;
}
</style>
