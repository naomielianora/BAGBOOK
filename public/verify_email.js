window.addEventListener('DOMContentLoaded', function() {
    setTimeout(function() {
      //akan muncul pop up setelah 2 detik
      alert('Your code is 123456!');
    }, 2000);
  });

// verify_email.js

document.addEventListener('DOMContentLoaded', function() {
    const codeInput = document.getElementById('code_verification');
    const warningMessage = document.getElementById('wrong_code_warning');
    const resendLink = document.querySelector('.resend_code');
  
    // Add an event listener to the form submission
    document.querySelector('form').addEventListener('submit', function(event) {
      event.preventDefault(); // Prevent form submission
  
      const enteredCode = codeInput.value;
      const correctCode = '123456';
  
      if (enteredCode !== correctCode) {
        warningMessage.classList.remove('hidden'); // Show the warning message
        codeInput.value = ''; // Clear the code input
      } else {
        // Code is correct, perform desired action (e.g., submit the form)
        this.submit();
      }
    });
  
    // Hide the warning message when the code input changes
    codeInput.addEventListener('input', function() {
      warningMessage.classList.add('hidden');
    });

    resendLink.addEventListener('click', function(event) {
        event.preventDefault(); // Prevent the default link behavior
        warningMessage.classList.add('hidden'); // Hide the warning message
        codeInput.value = ''; // Clear the code input
        alert('Your code is 123456!');
      });
});