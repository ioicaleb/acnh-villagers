<template>
  <section class="giftFinder">
    <img src="../assets/villagers/Rover.png" />
    <h3>Rover Recommends</h3>
    <p></p>
    <form class="nameSearch">
      <label for="name">Name: </label>
      <input id="name" v-model="nameInput" />
      <button type="submit" v-bind:disabled="!nameInput">Search</button>
    </form>
  </section>
</template>

<script>
export default {
  data(){
    return{
      nameInput: ''
    }
  }
};
</script>

<style>
#giftFinder {
  background-color: #e29578;
  justify-content: space-evenly;
  align-items: center;
  border: 2px solid burlywood;
  border-radius: 20px;
  font-size: 24px;
  padding: 5px;
}
#giftFinder .nameSearch {
  background-color: #e29578;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  border-radius: 20px;
  font-size: 24px;
  height: 50px;
}
#giftFinder input {
  font-family: "Caveat", cursive;
  font-size: 24px;
  background-color: burlywood;
  border: 2px solid sandybrown;
  color: black;
  border-radius: 10px;
  display: flex;
  justify-content: space-between;
  align-content: flex-end;
  flex-shrink: 1;
}
#giftFinder button {
  font-family: "Caveat", cursive;
  font-size: 24px;
  border: 2px solid burlywood;
  background-color: burlywood;
  border-radius: 10px;
}
#giftFinder img {
  height: 150px;
}
</style>