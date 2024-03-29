document.addEventListener('DOMContentLoaded', function () {
    let submitButton = document.getElementById('add_sub_category_button');
    let subCategoryInput = document.getElementById('input_sub_category');
    let categorySelect = document.getElementById('input_category_sub');
  
    subCategoryInput.addEventListener('input', function () {
      let subCategory = this.value;
      let categoryName = categorySelect.value;
      if (subCategory !== '') {
        checkSubCategoryExistence(subCategory, categoryName);
      } else {
        resetSubCategoryValidity();
      }
    });
  
    categorySelect.addEventListener('change', function () {
      let subCategory = subCategoryInput.value;
      let categoryName = this.value;
      if (subCategory !== '') {
        checkSubCategoryExistence(subCategory, categoryName);
      } else {
        resetSubCategoryValidity();
      }
    });
  
    submitButton.addEventListener('click', function (event) {
      if (getComputedStyle(subCategoryInput).backgroundColor !== 'rgb(0, 128, 0)') {
        event.preventDefault();
        let submit_warning = document.getElementById('input_sub_category_warning');
        submit_warning.classList.remove('hidden');
      }
    });
  });
  
  function resetSubCategoryValidity() {
    let subCategoryWarning = document.getElementById('sub_category_warning');
    let subCategoryInput = document.getElementById('input_sub_category');
    subCategoryInput.classList.remove('invalid', 'valid');
    subCategoryWarning.classList.add('hidden');
  }
  
  function checkSubCategoryExistence(subCategory, categoryName) {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', `/check_subCategory?inputed_subCategory=${encodeURIComponent(subCategory)}&categoryName=${encodeURIComponent(categoryName)}`, true);
    xhr.onreadystatechange = function () {
      if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
        let response = JSON.parse(xhr.responseText);
        updateSubCategory(response.taken === false);
      }
    };
    xhr.send();
  }
  
  function updateSubCategory(subCategoryAvailable) {
    let subCategoryWarning = document.getElementById('sub_category_warning');
    let subCategoryInput = document.getElementById('input_sub_category');
    subCategoryInput.classList.remove('invalid', 'valid');
    if (!subCategoryAvailable) {
      subCategoryWarning.classList.remove('hidden');
      subCategoryInput.classList.add('invalid');
    } else {
      subCategoryWarning.classList.add('hidden');
      subCategoryInput.classList.add('valid');
    }
  }
  
  document.addEventListener('DOMContentLoaded', function () {
      let submitButton = document.getElementById('add_sub_category_button');
      let subCategoryInput = document.getElementById('input_sub_category');
  
  
      submitButton.addEventListener('click', function(event){
          if(getComputedStyle(subCategoryInput).backgroundColor != "rgb(0, 128, 0)"){
              event.preventDefault();
              let submit_warning = document.getElementById('input_sub_category_warning');
              submit_warning.classList.remove('hidden');
          }
      })
      
  });
  
  