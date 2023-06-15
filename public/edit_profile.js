const fileInput = document.getElementById('gallery_upload_profile');
const fileNameDisplay = document.getElementById('file_name_uploaded');
const uploadButton = document.querySelector('.upload_button_edit');



fileInput.addEventListener('change', (event) => {
  const file = event.target.files[0];
  if (file) {
    fileNameDisplay.innerText = "You uploaded " + file.name;
    fileNameDisplay.style.display = 'inline';
  } else {
    fileNameDisplay.innerText = '';
    fileNameDisplay.style.display = 'none';
  }
});
