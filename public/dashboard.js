// Add an event listener to the sort buttons
document.addEventListener('DOMContentLoaded', function () {
    const buttons = document.getElementsByClassName('sort-button');
    for (let i = 0; i < buttons.length; i++) {
      buttons[i].addEventListener('click', function(event) {
        handleSortButton(event.target);
      });
    }
  });
  
// Function to handle sort button click
function handleSortButton(button) {
    const buttons = document.getElementsByClassName('sort-button');
    const sortOption = button.getAttribute('data-value');
  
    // Update the style of the clicked button and remove style from other buttons
    for (let i = 0; i < buttons.length; i++) {
      if (buttons[i] === event.target) {
        buttons[i].classList.add('selected');
        buttons[i].style.backgroundColor = '#4294FF';
      } else {
        buttons[i].classList.remove('selected');
        buttons[i].style.backgroundColor = '#737373';
      }
    }
  
    // Send an AJAX request to fetch the sorted data
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/sortData?sort=' + sortOption, true);
    xhr.onload = function () {
      if (xhr.status === 200) {
        // Replace the existing item-container with the sorted data
        var container = document.querySelector('#item-container'); // Update the selector here
        container.innerHTML = '';
        container.insertAdjacentHTML('beforeend', xhr.responseText);
      }
    };
    xhr.send();
  }
  