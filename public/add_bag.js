function displayPhoto(event) {
    var reader = new FileReader();
    reader.onload = function() {
      var photo = document.getElementById('add_bag_photo');
      photo.style.backgroundImage = 'url(' + reader.result + ')';
    }
    reader.readAsDataURL(event.target.files[0]);
  }
  
  // Function to remove the photo
  function removePhoto() {
    var photo = document.getElementById('add_bag_photo');
    photo.style.backgroundImage = 'none';
    var upload = document.getElementById('upload-photo');
    upload.value = null;
  }
  
  // Event listener for the file input change
  var upload = document.getElementById('upload-photo');
  upload.addEventListener('change', displayPhoto);