// TODO: Fetch an activity with the Bored API - Let's pseudocode!
const url = "https://bored.api.lewagon.com/api/activity/";

// 1. Select the button
const btn = document.querySelector('.btn.btn-warning');
const header = document.querySelector('#activity');
console.log(btn);

const addActivity = (data) => {
  console.log(data.activity);
  header.innerText = data.activity
}
// 2. Listen to the click event

btn.addEventListener('click', (event) => {
  // console.log('Button Clicked!!!')
  // 3. Fetch the activity from Bored API

  fetch('https://bored.api.lewagon.com/api/activity/') // 3.1 Make an HTTP request to the api
    .then(response => response.json())                 // 3.2 Read/parse the json from the api
    .then((data) => {                                  // 3.3 Access the activity from the api
      addActivity(data);
    })
})
