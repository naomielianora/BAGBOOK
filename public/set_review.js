//ganti set review.js dengan ini
document.addEventListener('DOMContentLoaded', function() {
  let radio1_5 = document.getElementById('nilai_1_5');
  let radio1_10 = document.getElementById('nilai_1_10');
  let grid2_1 = document.querySelector('.grid_set_review_2_1');
  let grid2_2 = document.querySelector('.grid_set_review_2_2');

  radio1_5.addEventListener('change', function() {
    if (this.checked) {
      grid2_1.style.display = 'grid';
      grid2_2.style.display = 'none';
    }
  });

  radio1_10.addEventListener('change', function() {
    if (this.checked) {
      grid2_1.style.display = 'grid';
      grid2_2.style.display = 'grid';
    }
  });
});


//DIGUNAKAN UNTUK MENGINSERT REVIEW_VALUE (SENGAJA DI DISABLE)
// document.addEventListener('DOMContentLoaded', function() {
//     let form = document.querySelector('form');
//     let additionalSaveButton = document.getElementById('additional_save_button');
//     let jumlahMinimalInput = document.getElementById('jumlah_minimal');
  
//     form.addEventListener('submit', function(event) {
//         event.preventDefault();  
//       let minimalReview = document.getElementById('jumlah_minimal').value;
//       let rentangNilai = document.querySelector('input[name="rentangNilai"]:checked').value;
//       let artiNilaiInputs = document.querySelectorAll('input[name="artiNilai"]');
//       let artiNilai = '';
  
//       artiNilaiInputs.forEach(function(input) {
//         artiNilai += input.value + ';';
//       });
  
//       artiNilai = artiNilai.slice(0, -1);
  
//       let data = {
//         minimalReview: minimalReview,
//         rentangNilai: rentangNilai,
//         artiNilai: artiNilai
//       };
  
//       fetch('/set_review', {
//         method: 'POST',
//         headers: {
//           'Content-Type': 'application/json'
//         },
//         body: JSON.stringify(data)
//       })
//         .then(function(response) {
//           if (response.ok) {
//             return response.json();
//           } else {
//             throw new Error('Error inserting data into review_value table');
//           }
//         })
//         .then(function(data) {
//           window.location.href = '/changed_conf_admin'; 
//         })
//     });
//     additionalSaveButton.addEventListener('click', function() {
//         let jumlahMinimalValue = parseInt(jumlahMinimalInput.value);
//         globalVariable = jumlahMinimalValue;
//     });
//   });