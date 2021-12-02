<template>
  <article>
      <!-- <img src="'../assets/villagers/{{villager.name}}.png'" /> -->
      <h1>{{villager.name}}</h1>
      <h2>{{villager.species}}</h2>
      <h2>{{villager.personality}}</h2>
      <h3>{{villager.color1}}</h3>
  </article>
</template>

<script>
export default {
  props:{
    villager: Object
  }
}
</script>

<style>

</style>