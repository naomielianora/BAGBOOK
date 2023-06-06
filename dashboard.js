const searchButton = document.getElementById('search-button');
const searchInput = document.getElementById('search-input');
const searchResultsDiv = document.getElementById("search-results");

searchButton.addEventListener("click", function() {
    const searchTerm = searchInput.value.trim();
    if (searchTerm !== "") {
    // Clear previous search results
    searchResultsDiv.innerHTML = "";

    // Create heading element
    const heading = document.createElement("h2");
    heading.textContent = "Search Results";
    searchResultsDiv.appendChild(heading);

    // Create blue box element
    const blueBox = document.createElement("div");
    blueBox.classList.add("container");
    blueBox.textContent = "No content found.";
    searchResultsDiv.appendChild(blueBox);
    }
});

searchInput.addEventListener("input", function() {
    const searchTerm = searchInput.value.trim();
    if (searchTerm === "") {
    // Clear search results
    searchResultsDiv.innerHTML = "";
    }
});

let isInputFocused = false;

searchInput.addEventListener('mouseover', () => {
    if (!isInputFocused && searchInput.value.trim() === '') {
    searchInput.style.backgroundColor = '#D0DBF7';
    }
});

searchInput.addEventListener('mouseout', () => {
    if (!isInputFocused && searchInput.value.trim() === '') {
    searchInput.style.backgroundColor = 'white';
    }
});

searchInput.addEventListener('focus', () => {
    isInputFocused = true;
});

searchInput.addEventListener('blur', () => {
    isInputFocused = false;
    if (searchInput.value.trim() === '') {
    searchInput.style.backgroundColor = 'white';
    }
});

//KODE UNTUK SEARCH BUTTON
let searchButtonClicked = false;
let searchButtonTimeout;

searchButton.addEventListener('mouseover', () => {
    if (!searchButtonClicked) {
    searchButton.style.backgroundColor = '#2969C7';
    }
});

searchButton.addEventListener('mouseout', () => {
    if (!searchButtonClicked) {
    searchButton.style.backgroundColor = '#376CFB';
    }
});

searchButton.addEventListener('click', () => {
    searchButton.style.backgroundColor = '#1F3D7A';
    searchButtonClicked = true;
    clearTimeout(searchButtonTimeout);
    searchButtonTimeout = setTimeout(() => {
    searchButton.style.backgroundColor = '#376CFB';
    searchButtonClicked = false;
    }, 2000);
});

//KODE JS UNTUK BARIS FILTER
//KODE UNTUK SORTBY
const sortButtons = document.querySelectorAll('.sort-button');

sortButtons.forEach(button => {
    button.addEventListener('mouseover', () => {
    if (!button.classList.contains('selected')) {
        button.style.backgroundColor = '#E0E0E0';
    }
    });

    button.addEventListener('mouseout', () => {
    if (!button.classList.contains('selected')) {
        button.style.backgroundColor = '#737373';
    }
    });
});

function toggleSortButton(button) {
    const buttons = document.getElementsByClassName('sort-button');
    for (let i = 0; i < buttons.length; i++) {
    if (buttons[i] === button) {
        buttons[i].classList.add('selected');
        buttons[i].style.backgroundColor = '#4294FF';
    } else {
        buttons[i].classList.remove('selected');
        buttons[i].style.backgroundColor = '#737373';
    }
    }
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
    category_dropdownLabel.style.backgroundColor = '#C3DCF2';
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
    sub_category_dropdownLabel.style.backgroundColor = '#C3DCF2';
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

//KODE UNTUK SUBMIT
const submitButton = document.getElementById('submit-button');

submitButton.addEventListener('click', () => {
    submitButton.style.backgroundColor = '#E0E0E0';
    submitButton.style.color = '#737373';
    isClicked = true;
    setTimeout(() => {
    submitButton.style.backgroundColor = '#FFF';
    submitButton.style.color = '#737373';
    isClicked = false;
    }, 2000);
});

submitButton.addEventListener('mouseover', () => {
    if (!isClicked) {
    submitButton.style.backgroundColor = '#F5F5F5';
    submitButton.style.color = '#737373';
    }
});

submitButton.addEventListener('mouseout', () => {
    if (!isClicked) {
    submitButton.style.backgroundColor = '#FFF';
    submitButton.style.color = '#737373';
    }
});