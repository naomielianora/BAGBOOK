function checkRadioButton() {
    var radioButtons = document.getElementsByName("nilai_review");
    var isChecked = false;
  
    for (var i = 0; i < radioButtons.length; i++) {
      if (radioButtons[i].checked) {
        isChecked = true;
        break;
      }
    }
  
    return isChecked;
  }
  
  function checkReviewDesc() {
    var reviewText = document.querySelector('.input_review');
  
    if (reviewText.value.trim() === '') {
      return false;
    }
    return true;
  }
  
  document.addEventListener('DOMContentLoaded', function () {
    let submitButton = document.getElementById('submit_review_button');
  
    submitButton.addEventListener('click', function (event) {
      // jika ada input yang tidak valid
      if (!checkRadioButton() || !checkReviewDesc()) {
        event.preventDefault(); // Prevent form submission
        // tampilkan error message
        let submit_warning = document.getElementById('all_rating_warning');
        submit_warning.classList.remove('hidden');
      }
    });
  });
  