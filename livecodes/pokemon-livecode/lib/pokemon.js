// TODO write your code here
const extractTypeName = (pokemonType) => {
  // console.log(pokemonType) // => {slot: 1, type: {…}}
  // console.log(pokemonType.type) // => {name: 'fire', url: 'https://pokeapi.co/api/v2/type/10/'}
  // console.log(pokemonType.type.name) // => {name: 'fire', url: 'https://pokeapi.co/api/v2/type/10/'}
  // typeNames.push(pokemonType.type.name)
  return pokemonType.type.name
}

const insertPokemonInfo = (pokemonData) => {
  // console.log(pokemonData)
  // create clone
  const clone = cardTemplate.content.cloneNode(true)
  // build it with data
  clone.querySelector('img').src = pokemonData.sprites.front_default
  clone.querySelector('h2').innerText = pokemonData.name
  // 3. Display the pokemons
  // Access the types
  // console.log(pokemonData.types)
  // const typeNames = []
  const typeNames = pokemonData.types.map(type => extractTypeName(type))
  // console.log(typeNames.join(', '));
  clone.querySelector('p').innerText = typeNames.join(', ')

  // build a string with the types name
  cardContainer.appendChild(clone);
}
// 1. select the card template
const cardTemplate = document.querySelector('#cardTemplate');
// 1. select where we are going to put them
const cardContainer = document.querySelector('#cardsContainer');
// 2. get the pokemons from the api
fetch("https://pokeapi.co/api/v2/pokemon?limit=151")
.then(response => response.json())
.then((data) => {
  // we need the information about each pokemon
  // how can I access the array of pokemons
  // console.log(data.results)
  // iterate over the array of pokemons
  data.results.forEach((pokemon) => {
    // make another fetch request to get pokemon info
    // console.log(pokemon)
    fetch(pokemon.url)
      .then(response => response.json())
      .then(pokemonData => insertPokemonInfo(pokemonData))
  })

})
