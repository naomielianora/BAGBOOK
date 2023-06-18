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



//KODE UNTUK CATEGORY DROP DOWN
const category_dropdownLabel = document.getElementById('category_dropdown-label');
const category_dropdownOptions = document.getElementById('category_dropdown-options');
const category_dropdownItems = category_dropdownOptions.querySelectorAll('.category-value');
let category_previousSelectedValue = '';

category_dropdownLabel.addEventListener('click', () => {
  category_dropdownOptions.classList.toggle('show-dropdown-options');
});

category_dropdownLabel.addEventListener('mouseover', () => {
  category_dropdownLabel.style.backgroundColor = '#376CFB';
});

category_dropdownLabel.addEventListener('mouseout', () => {
  category_dropdownLabel.style.backgroundColor = '#4294FF';
});

document.addEventListener('click', (event) => {
  const isClickedInsideDropdown = category_dropdownLabel.contains(event.target) || category_dropdownOptions.contains(event.target);
  if (!isClickedInsideDropdown) {
  category_dropdownOptions.classList.remove('show-dropdown-options');
  category_dropdownLabel.textContent = category_previousSelectedValue ? category_previousSelectedValue : 'All';
  }
});

for (let i = 0; i < category_dropdownItems.length; i++) {
  category_dropdownItems[i].addEventListener('click', () => {
  const selectedValue = category_dropdownItems[i].dataset.value;
  category_dropdownLabel.textContent = category_dropdownItems[i].textContent;
  category_dropdownOptions.classList.remove('show-dropdown-options');
  category_previousSelectedValue = selectedValue;
  console.log('Selected category:', selectedValue);
  });

  category_dropdownItems[i].addEventListener('mouseover', () => {
  category_dropdownItems[i].style.backgroundColor = '#C3DCF2';
  });

  category_dropdownItems[i].addEventListener('mouseout', () => {
  category_dropdownItems[i].style.backgroundColor = '#FFF';
  });
}

//KODE UNTUK SUB CATEGORY DROP DOWN
const sub_category_dropdownLabel = document.getElementById('sub_category_dropdown-label');
const sub_category_dropdownOptions = document.getElementById('sub_category_dropdown-options');
const sub_category_dropdownItems = sub_category_dropdownOptions.querySelectorAll('.sub-category-value');
let sub_category_previousSelectedValue = '';

sub_category_dropdownLabel.addEventListener('click', () => {
  sub_category_dropdownOptions.classList.toggle('show-dropdown-options');
});

sub_category_dropdownLabel.addEventListener('mouseover', () => {
  sub_category_dropdownLabel.style.backgroundColor = '#376CFB';
});

sub_category_dropdownLabel.addEventListener('mouseout', () => {
  sub_category_dropdownLabel.style.backgroundColor = '#4294FF';
});

document.addEventListener('click', (event) => {
  const isClickedInsideDropdown = sub_category_dropdownLabel.contains(event.target) || sub_category_dropdownOptions.contains(event.target);
  if (!isClickedInsideDropdown) {
  sub_category_dropdownOptions.classList.remove('show-dropdown-options');
  sub_category_dropdownLabel.textContent = sub_category_previousSelectedValue ? sub_category_previousSelectedValue : 'All';
  }
});

for (let i = 0; i < sub_category_dropdownItems.length; i++) {
  sub_category_dropdownItems[i].addEventListener('click', () => {
  const selectedValue = sub_category_dropdownItems[i].dataset.value;
  sub_category_dropdownLabel.textContent = sub_category_dropdownItems[i].textContent;
  sub_category_dropdownOptions.classList.remove('show-dropdown-options');
  sub_category_previousSelectedValue = selectedValue;
  console.log('Selected sub-category:', selectedValue);
  });

  sub_category_dropdownItems[i].addEventListener('mouseover', () => {
  sub_category_dropdownItems[i].style.backgroundColor = '#C3DCF2';
  });

  sub_category_dropdownItems[i].addEventListener('mouseout', () => {
  sub_category_dropdownItems[i].style.backgroundColor = '#FFF';
  });
}
