import Mustache from "mustachejs";
// Mustache example
// const testingMustache = Mustache.render("<h1>{{pokemon}}</h1>", {"pokemon": "Hi from Mustache"})
// console.log(testingMustache);

const movieList = document.getElementById('results');
const template = document.querySelector('#movieCardTemplate').innerHTML;

fetch('http://www.omdbapi.com/?apikey=f6da2807&s=harry%20potter')
  .then(response => response.json())
  .then((data) => {
    console.log(data.Search)
    // clean the list before adding
    // movieList.innerHTML = '';
    // data.Search.forEach((movie) => {
    // =====VANILLA JS======
    // const movieHTML = `
    //   <div class='col-3'>
    //     <div class="card">
    //       <img src="${movie.Poster}" class="card-img-top" alt="${movie.Title} poster">
    //       <div class="card-body">
    //         <h2 class="card-title">${movie.Title}</h2>
    //         <p class="card-text">${movie.Year}</p>
    //         <a href="https://www.imdb.com/title/${movie.imdbID}" class="btn btn-primary" target="_blank">Go on IMDB</a>
    //       </div>
    //     </div>
    //   </div>
    // `
    // movieList.insertAdjacentHTML('beforeend', movieHTML);
    // =====VANILLA JS======

    // =====TEMPLATE TAG======
    // const clone = template.content.cloneNode(true)
    // clone.querySelector('h2').innerText = movie.Title
    // clone.querySelector('p').innerText = movie.Year
    // const poster = clone.querySelector('img')
    // poster.src = movie.Poster
    // poster.alt = `${movie.Title} poster`
    // clone.querySelector('a').href = `https://www.imdb.com/title/${movie.imdbID}`
    // console.log(clone)
    // // insert the movie into the DOM
    // movieList.appendChild(clone) // needs an HTML Object
    // =====TEMPLATE TAG======

    // =====MUSTACHE======
    //   const movieHTML = Mustache.render(template, movie)
    //   console.log(movieHTML);
    //   movieList.insertAdjacentHTML('beforeend', movieHTML)

    // })
    const movies = { "movies": data.Search }
    const renderedHTML = Mustache.render(template, movies)
    movieList.innerHTML = renderedHTML;
    // =====MUSTACHE======

  })


// import { createApp } from 'vue'
// createApp({
//   data() {
//     return {
//       pokemon: 'Welcome to VueJS'
//     }
//   }
// }).mount('#app')
