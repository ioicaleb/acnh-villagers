<template>
  <section id="matchmaker">
      <img src="../assets/villagers/Katie.png" />
    <h3>Katie Matchmakes</h3>
    <p></p>
  </section>
</template>

<script>
export default {
}
</script>

<style>
#matchmaker{
  background-color: #e29578;
  justify-content: space-evenly;
  align-items: center;
  border: 2px solid burlywood;
  border-radius: 20px;
  font-size: 24px;
  padding: 5px;

}
.nameSearch{
  background-color: #e29578;
  display: flex;
  justify-content: space-evenly;
  align-items: center;
  border-radius: 20px;
  font-size: 24px;
  height: 50px;
}
.search input{
  font-family: 'Caveat', cursive;
  font-size: 24px;
  background-color: burlywood;
  border: 2px solid burlywood;
  color: black;
  border-radius: 10px;
}
.search button{
  font-family: 'Caveat', cursive;
  font-size: 24px;
  border: 2px solid burlywood;
  background-color: burlywood;
  border-radius: 10px;
}
#matchmaker img{
  height: 150px;
}
</style>