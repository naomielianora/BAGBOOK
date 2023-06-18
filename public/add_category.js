document.addEventListener('DOMContentLoaded', function () {
    let categoryInput = document.getElementById('input_category');

    categoryInput.addEventListener('input', function () {
        let category = this.value;
        checkCategoryExistence(category);
    });
});

function checkCategoryExistence(category) {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', '/check_category?inputed_category=' + encodeURIComponent(category), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            let response = JSON.parse(xhr.responseText);
            updateCategory(response.taken === false)
        }
    };
    xhr.send();
}

function updateCategory(categoryAvailable) {

    let categoryWarning = document.getElementById('category_warning');
    let categoryInput = document.getElementById('input_category');
    categoryInput.classList.remove('invalid', 'valid');
    if (!categoryAvailable) {
        categoryWarning.classList.remove("hidden");
        categoryInput.classList.add('invalid');
    }else{
        categoryWarning.classList.add("hidden");
        categoryInput.classList.add('valid');
    }
}

document.addEventListener('DOMContentLoaded', function () {
    let submitButton = document.getElementById('add_category_button');
    let categoryInput = document.getElementById('input_category');


    submitButton.addEventListener('click', function(event){
        if(getComputedStyle(categoryInput).backgroundColor != "rgb(0, 128, 0)"){
            event.preventDefault();
            let submit_warning = document.getElementById('input_category_warning');
            submit_warning.classList.remove('hidden');
        }
    })
    
});

