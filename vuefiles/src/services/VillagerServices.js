import Axios from 'axios';

const options = {
    baseURL: 'https://localhost:44318/'
}

const client = Axios.create(options)
export default{
    getAllVillagers(){
        return client.get('Villager');
    },
    getVOTD(){
        return client.get('Villager/VOTD');
    },
    getBirthday(){
        return client.get('Villager/birthday')
    },
    getVillagerByName(name){
        return client.get(`Villager/${name}`)
    },
    getVillagerByPersonality(personality){
        return client.get(`Villager/personality/${personality}`)
    },
    getVillagerBySpecies(species){
        return client.get(`Villager/species/${species}`)
    },
}