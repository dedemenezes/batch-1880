import Swal from 'sweetalert2'

const url = 'https://api.github.com/users/dhh'

console.log(fetch('https://api.github.com/users/dhh'))
// fetch will return a PROMISE
// this means we need to wait
// for it to be fullfilled or rejected

// fetch(url)                            // Triggering an HTTP Request
  // .then((response) => {
//     // console.log(response.json())   // Parsing the response into a JS object
//     return response.json();
//   })
//   .then((data) => {                   // The response was already parsed!
//     console.log(data)
//   })


// AJAX POST REQUEST

// 1. Select the form
const form = document.querySelector('#form')
// 2. Listen to the submit event
form.addEventListener('submit', (event) => {
  event.preventDefault();
  // 3. Get the user email from the input
  const emailInput = document.querySelector('#email')
  console.log(emailInput.value);
  // 4. Get the user password
  const passwordInput = document.querySelector('#password')
  console.log(passwordInput.value);
  // 5. Submit the form using fetch
  fetch('https://reqres.in/api/register', {
    method: 'POST',
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({ email: emailInput.value, password: passwordInput.value })
  })
    .then((response) => {
      if (response.status === 200) {
        Swal.fire({
          title: "Success",
          text: "Account created!",
          icon: "success"
        });
      } else {
        Swal.fire({
          title: "Error",
          text: "Account not created!",
          icon: "error"
        });
      }
    })
})
