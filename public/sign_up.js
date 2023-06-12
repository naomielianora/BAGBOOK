//to check if user has inputed the same password in the confirm password text box
document.addEventListener('DOMContentLoaded', function() {
    let passwordInput = document.getElementById('password_sign_up');
    let confirmPasswordInput = document.getElementById('confirm_password');


    passwordInput.addEventListener('input', function() {
      let password = passwordInput.value;
      let confirmPassword = confirmPasswordInput.value;
  
      if (password.length > 8) {
        passwordInput.classList.remove('invalid');
        passwordInput.classList.add('valid');
      } else {
        passwordInput.classList.remove('valid');
        passwordInput.classList.add('invalid');
      }
    });


    confirmPasswordInput.addEventListener('input', function() {
        let password = passwordInput.value;
        let confirmPassword = confirmPasswordInput.value;

        if (password === confirmPassword) {
          confirmPasswordInput.classList.remove('invalid');
          confirmPasswordInput.classList.add('valid');
        } else {
          confirmPasswordInput.classList.remove('valid');
          confirmPasswordInput.classList.add('invalid');
        }
    });

    
});


//to check the availability of the username (since the username must be unique)
//using ajax so the user doesn't have to submit to know the availability of the username
  document.addEventListener('DOMContentLoaded', function() {
    let usernameInput = document.getElementById('username_sign_up');
  
    usernameInput.addEventListener('input', function() {
      let inputed_username = this.value;
      checkUsernameAvailability(inputed_username);
    });
  });
  
  function checkUsernameAvailability(inputed_username) {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', '/check_username?inputed_username=' + encodeURIComponent(inputed_username), true);
  
    xhr.onreadystatechange = function() {
      if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
        let response = JSON.parse(xhr.responseText);
        updateUsernameInput(response.taken === false && inputed_username.length > 7); 
      }
    };
  
    xhr.send();
  }



  function updateUsernameInput(isAvailable) {
    let usernameInput = document.getElementById('username_sign_up');
    
    usernameInput.classList.remove('taken', 'available');
    if (isAvailable) {
      usernameInput.classList.add('available');
    } else {
      usernameInput.classList.add('taken');
    }
  }

