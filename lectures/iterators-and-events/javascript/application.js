// ==========RECAP==========  //
const btn = document.querySelector('.btn-primary')
console.log(btn)

const btns = document.querySelectorAll('.btn-primary')
console.log(btns)

const button = document.getElementById('clickme')
console.log(button)

console.log("");
// ==========RECAP END========== //



// ==========ITERATOR WITH DOM========== //
const students = ['Luna', 'Neville', 'Hermione', 'Draco']

// 0. Create a variable to store each li
let liContent = ''
// 1. generate the <li> for each element
students.forEach((studentName) => {
  liContent += `<li><strong>${studentName}</strong></li>`
})

console.log(liContent)
// 2. Concatenate with the <ul>
const ul = `<ul>${liContent}</ul>`
console.log(ul)

// 3. Select the container to insert the list into
const container = document.querySelector('.container')
// console.log(container);

container.insertAdjacentHTML('afterbegin', ul)

const listItems = document.querySelectorAll('li')
// console.log(listItems);

listItems.forEach((item) => {
  // console.log(item.innerText)
  // console.log(item.innerHTML)
  item.innerText += ' 🧙'
})

// Change list style
// 1. Select the element
const unorderedList = document.querySelector('ul')
console.log(unorderedList);
// 2. Dom you thing/apply manipulation
unorderedList.style.listStyleType = "upper-roman"
// ==========ITERATOR WITH DOM END ========== //



// ==========DATASET========== //
const gerson = document.querySelector('#gerson')
console.log(gerson.dataset.team);
console.log(gerson.dataset.country);

const abbaFirst = document.querySelector('.abba')
console.log(abbaFirst.dataset)

const musicians = document.querySelectorAll('.abba')
console.log(musicians)
musicians.forEach((musician) => {
  musician.innerHTML += ` (${musician.dataset.instrument})`
})
// ==========DATASET END========== //



// ==========EVENTS========== //

// ### MANTRA OF THE DAY! ###
// seletecElement.addEventListener('eventType', (event) => {
// })
// ### MANTRA OF THE DAY! ###

// const img = document.querySelector('#romain')
// // console.log(img)

// img.addEventListener('click', (event) => {
//   console.log(event)
//   // access the element who fired the event
//   console.log(event.currentTarget)

//   event.currentTarget.classList.toggle('img-circle')
// })

const images = document.querySelectorAll('img')

images.forEach((img) => {
  img.addEventListener('click', (event) => {
    event.currentTarget.classList.toggle('img-circle')
  })
})


// Preventing Default Behavior
const link = document.querySelector('#link')

link.addEventListener('click', (event) => {
  event.preventDefault()
  console.log("Clicked the link!")
})
// ==========EVENTS END========== //



// ==========PUTTING IT ALL TOGETHER========== //
// 1. Select the element the user will interact
const selectAllCheckbox = document.querySelector('#select-all-checkbox');
// console.log(selectAllCheckbox)
// 2. Bind an event listener to the element the user will interact
selectAllCheckbox.addEventListener('click', (event) => {
  // 3. Perform the manipulation - check all the others checkboxes
  // 3.1 select all the others checkboxes
  const checkboxes = document.querySelectorAll('.form-check-input')
  console.log(checkboxes)
  // 3. update the checked state for each one of them
  checkboxes.forEach((checkbox) => {
    checkbox.checked = event.currentTarget.checked
  })
})
