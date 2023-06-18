document.addEventListener('DOMContentLoaded', function () {
    let designerInput = document.getElementById('input_designer');

    designerInput.addEventListener('input', function () {
        let designer = this.value;
        checkDesignerExistence(designer);
    });
});

function checkDesignerExistence(designer) {
    let xhr = new XMLHttpRequest();
    xhr.open('GET', '/check_designer?inputed_designer=' + encodeURIComponent(designer), true);
    xhr.onreadystatechange = function () {
        if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
            let response = JSON.parse(xhr.responseText);
            updateDesigner(response.taken === false)
        }
    };
    xhr.send();
}

function updateDesigner(designerAvailable) {

    let designerWarning = document.getElementById('designer_warning');
    let designerInput = document.getElementById('input_designer');
    designerInput.classList.remove('invalid', 'valid');
    if (!designerAvailable) {
        designerWarning.classList.remove("hidden");
        designerInput.classList.add('invalid');
    }else{
        designerWarning.classList.add("hidden");
        designerInput.classList.add('valid');
    }
}

document.addEventListener('DOMContentLoaded', function () {
    let submitButton = document.getElementById('add_designer_button');
    let designerInput = document.getElementById('input_designer');


    submitButton.addEventListener('click', function(event){
        if(getComputedStyle(designerInput).backgroundColor != "rgb(0, 128, 0)"){
            event.preventDefault();
            let submit_warning = document.getElementById('input_designer_warning');
            submit_warning.classList.remove('hidden');
        }
    })
    
});

