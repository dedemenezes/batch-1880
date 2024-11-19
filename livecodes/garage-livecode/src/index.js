// DISPLAY ALL CARS
// 1. Select where we are going to put them
const garage = document.querySelector('.cars-list');
// 2. Get al the cars from the API (fetch)
const url = "https://garage.api.lewagon.com/awesome-1880/cars"
const getAllCars = (url) => {
  fetch(url)
  .then(response => response.json())
  .then((data) => {
    console.log(data) // [{…}, {…}]
    garage.innerHTML = ''
    // 3. Display all the cars
    data.forEach((car) => {
      garage.insertAdjacentHTML('beforeend', `
        <div class="car">
          <div class="car-image">
            <img src="http://loremflickr.com/280/280/${car.model}" />
          </div>
          <div class="car-info">
            <h4>${car.brand} ${car.model}</h4>
            <p><strong>Owner:</strong> ${car.owner}</p>
            <p><strong>Plate:</strong> ${car.plate}</p>
          </div>
        </div>
      `)
    })
  })
}

getAllCars(url)




// 1. Select the car form
const form = document.querySelector('.car-form')
// console.log(form);

// 2. Listen to the submit event
form.addEventListener('submit', (event) => {
  // 3. In the event listener
  event.preventDefault()
  console.log(event.currentTarget) // currentTarget returns the ELEMENT WHICH WE BINDED THE EVENT
  // 4. Get the inputs from the form
  // 4.1 select each input
  // 4.2 access it's value
  const formData = new FormData(event.currentTarget)
  const carEntries = Object.fromEntries(formData)
  console.log(carEntries)
  // 5. submit the form to the API (fetch)
  fetch(url, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(carEntries)
  })
    .then((response) => {
      getAllCars(url)
    })
  //  parse the response
  //  add the new car to the page
})
