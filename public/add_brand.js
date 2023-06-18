document.addEventListener('DOMContentLoaded', function () {
    let brandInput = document.getElementById('input_brand');

    brandInput.addEventListener('input', function () {
        let brand = this.value;
        checkBrandExistence(brand);
    });
});

function checkBrandExistence(brand) {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', '/check_brand?inputed_brand=' + encodeURIComponent(brand), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            let response = JSON.parse(xhr.responseText);
            updateBrand(response.taken === false)
        }
    };
    xhr.send();
}

function updateBrand(brandAvailable) {

    let brandWarning = document.getElementById('brand_warning');
    let brandInput = document.getElementById('input_brand');
    brandInput.classList.remove('invalid', 'valid');
    if (!brandAvailable) {
        brandWarning.classList.remove("hidden");
        brandInput.classList.add('invalid');
    }else{
        brandWarning.classList.add("hidden");
        brandInput.classList.add('valid');
    }
}

document.addEventListener('DOMContentLoaded', function () {
    let submitButton = document.getElementById('add_button_brand');
    let brandInput = document.getElementById('input_brand');


    submitButton.addEventListener('click', function(event){
        if(getComputedStyle(brandInput).backgroundColor != "rgb(0, 128, 0)"){
            event.preventDefault();
            let submit_warning = document.getElementById('input_brand_warning');
            submit_warning.classList.remove('hidden');
        }
    })
    
});

