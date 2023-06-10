
// fetch('/log_in_public', {
//     method: 'POST',
//     body: JSON.stringify({ username: 'example', password: 'password' }),
//     headers: {
//       'Content-Type': 'application/json'
//     }
//   })
//   .then(response => {
//     if (response.ok) {
//       // Successful login, redirect to the main page
//       window.location.href = '/dashboard_public';
//     } else if (response.status === 401) {
//       // Unauthorized, display an alert
//       response.text().then(errorMessage => {
//         alert(errorMessage);
//       });
//     } else if (response.status === 400) {
//       // Bad request, display an alert
//       response.text().then(errorMessage => {
//         alert(errorMessage);
//       });
//     } else {
//       // Other error occurred, handle accordingly
//       console.error('An error occurred:', response.statusText);
//     }
//   })
//   .catch(error => {
//     console.error('An error occurred:', error);
//   });
  