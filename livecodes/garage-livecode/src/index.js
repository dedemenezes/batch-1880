const garage = document.querySelector('.cars-list');
const url = "https://garage.api.lewagon.com/awesome-1880/cars"

const insertCarCard = (car) => {
  const carHTML = `
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
  `
  garage.insertAdjacentHTML('beforeend', carHTML)
}

const getAllCars = (url) => {
  fetch(url)
  .then(response => response.json())
  .then((data) => {
    garage.innerHTML = ''
    data.forEach(car => insertCarCard(car))
  })
}

getAllCars(url)

const createCar = (event) => {
  event.preventDefault()
  const formData = new FormData(event.currentTarget)
  const carEntries = Object.fromEntries(formData)
  fetch(url, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify(carEntries)
  })
  .then((response) => {
    getAllCars(url)
  })
}


const form = document.querySelector('.car-form')
form.addEventListener('submit', createCar)
