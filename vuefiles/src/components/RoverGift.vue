<template>
  <section class="giftFinder">
    <img src="../assets/villagers/Rover.png" />
    <h3>Rover Recommends</h3>
    <p>Is there a birthday coming up on your island? Not sure what to get them? Just let everybody's best friend Rover give you some suggestions!</p>
    <form class="nameSearch">
      <label for="name">Name: </label>
      <input id="name" v-model="nameInput" />
      <button type="submit" v-bind:disabled="!nameInput">Search</button>
    </form>
      <small style="color: red; font-weight: bold" v-show="invalidName">There's nobody by that name. Check your spelling and try again</small>
  </section>
</template>

<script>
export default {
  data(){
    return{
      nameInput: '',
      invalidName: false,
    }
  }
};
</script>

<style>
.giftFinder {
  display: flex;
  flex-direction: column;
  align-items: center;
  background-color: #dba759;
  color: #542312;
  border-radius: 20px;
  padding: 5px;
  width: 30%;
  border: 2px solid #542312;
  text-align: left;
}
.giftFinder h3 {
  font-size: 2rem;
}
.giftFinder p,
.giftFinder small {
  padding-left: 30px;
  padding-right: 30px;
  font-size: 1.4rem;
}
.giftFinder img {
  height: 20em;
}
</style>