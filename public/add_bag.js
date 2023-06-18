
//sub-category dropdown
document.addEventListener('DOMContentLoaded', function() {
    var categorySelect = document.getElementById('bag-category');
    var subCategorySelect = document.getElementById('bag-sub-category');
  
    categorySelect.addEventListener('change', function() {
      var category = this.value;
  
      var xhr = new XMLHttpRequest();
      xhr.open('GET', '/get_subcategories?category=' + category);
      xhr.onload = function() {
        if (xhr.status === 200) {
          var response = JSON.parse(xhr.responseText);
          var subCategories = response.subCategories;
  
          var options = '';
          subCategories.forEach(function(subCategory) {
            options += '<option value="' + subCategory.idSubCat + '">' + subCategory.subCat_name + '</option>';
          });
  
          subCategorySelect.innerHTML = options;
        } else {
          console.error('Request failed. Status:', xhr.status);
        }
      };
      xhr.send();
    });
    
  });


// upload dan remove photo

// Mendapatkan referensi elemen-elemen yang diperlukan
const photoContainer = document.querySelector('.photo-container');
const previewImage = document.getElementById('preview');
const uploadInput = document.getElementById('gallery-upload');

// Menambahkan event listener saat tombol "Upload from Gallery" diklik
document.querySelector('.upload-button').addEventListener('click', () => {
  uploadInput.click();
});

// Menambahkan event listener saat input file diubah
uploadInput.addEventListener('change', (event) => {
  const file = event.target.files[0]; // Mengambil file yang dipilih

  // Membaca file sebagai URL gambar
  const reader = new FileReader();
  reader.onload = (e) => {
    previewImage.src = e.target.result; // Menampilkan gambar di preview
  };
  reader.readAsDataURL(file);
});

// Event listener untuk tombol "Remove"
document.querySelector('.remove-button').addEventListener('click', () => {
  // Menghapus gambar yang dipilih dan mengatur kembali preview ke gambar default
  uploadInput.value = null;
  previewImage.src = '/photo.png';
});


