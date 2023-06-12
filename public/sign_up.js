//to check if user has inputed more than 8 characters for the password
document.addEventListener('DOMContentLoaded', function () {
  let passwordInput = document.getElementById('password_sign_up');
  let confirmPasswordInput = document.getElementById('confirm_password');


  passwordInput.addEventListener('input', function () {
    let password = passwordInput.value;

    if (password.length > 7) {
      passwordInput.classList.remove('invalid');
      passwordInput.classList.add('valid');
    } else {
      passwordInput.classList.remove('valid');
      passwordInput.classList.add('invalid');
    }
  });

  //to check if user has inputed the same password in the confirm password text box
  confirmPasswordInput.addEventListener('input', function () {
    let password = passwordInput.value;
    let confirmPassword = confirmPasswordInput.value;
    let passwordWarning = document.getElementById('password_warning');

    if (password !== confirmPassword) {
      passwordWarning.classList.remove("hidden");
      confirmPasswordInput.classList.remove('invalid');
      confirmPasswordInput.classList.add('valid');
    } else {
      passwordWarning.classList.add("hidden");
      confirmPasswordInput.classList.remove('valid');
      confirmPasswordInput.classList.add('invalid');
    }

  });


});


//to check the availability of the username (since the username must be unique)
//using ajax so the user doesn't have to submit to know the availability of the username
document.addEventListener('DOMContentLoaded', function () {
  let usernameInput = document.getElementById('username_sign_up');

  usernameInput.addEventListener('input', function () {
    let inputed_username = this.value;
    checkUsernameAvailability(inputed_username);
  });
});

function checkUsernameAvailability(inputed_username) {
  let xhr = new XMLHttpRequest();
  xhr.open('GET', '/check_username?inputed_username=' + encodeURIComponent(inputed_username), true);

  xhr.onreadystatechange = function () {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      let response = JSON.parse(xhr.responseText);
      updateUsernameInput(response.taken === false, inputed_username.length > 7);
    }
  };

  xhr.send();
}



function updateUsernameInput(usernameAvailable, username8char) {
  let usernameInput = document.getElementById('username_sign_up');
  let usernameWarning = document.getElementById('username_warning');
  usernameInput.classList.remove('valid', 'invalid');
  usernameWarning.classList.add("hidden");
  if (usernameAvailable && username8char) {
    usernameInput.classList.add('valid');
  } else {
    if (!usernameAvailable) {
      usernameWarning.classList.remove("hidden");
    }
    usernameInput.classList.add('invalid');
  }
}

//to check the availability of the email (since the email must be unique)
document.addEventListener('DOMContentLoaded', function () {
  let emailInput = document.getElementById('email_address');

  emailInput.addEventListener('input', function () {
    let inputed_email = this.value;
    checkEmailAvailability(inputed_email);
  });
});

function checkEmailAvailability(inputed_email) {
  let xhr = new XMLHttpRequest();
  xhr.open('GET', '/check_email?inputed_email=' + encodeURIComponent(inputed_email), true);

  xhr.onreadystatechange = function () {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      let response = JSON.parse(xhr.responseText);
      let isValidEmail = validateEmail(inputed_email);
      updateEmailInput(response.taken === false, isValidEmail);
    }
  };

  xhr.send();
}

function validateEmail(email) {
  // Use regex to check if the email matches the pattern for a Gmail address
  let gmailPattern = new RegExp(/^[a-zA-Z0-9_.+-]+@gmail\.com$/);
  return gmailPattern.test(email);
}

function updateEmailInput(emailAvailable, isValidEmail) {
  let emailInput = document.getElementById('email_address');
  let emailWarning = document.getElementById('email_warning');
  emailInput.classList.remove('valid', 'invalid');
  emailWarning.classList.add("hidden");
  if (emailAvailable && isValidEmail) {
    emailInput.classList.add('valid');
  } else {
    if (!emailAvailable) {
      emailWarning.classList.remove("hidden");
    }
    emailInput.classList.add('invalid');
  }

}