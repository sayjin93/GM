// Run function when DOM Content has loaded
document.addEventListener('DOMContentLoaded', init);

// Declare form
let form = document.forms["form1"];

// Function to run when DOM Content has loaded
function init(event) {
    getChkState();
    checkConditions();
}

// Form validation
function validateForm(e) {
    e.preventDefault();

    let elementsRequired = document.forms["form1"].querySelectorAll("[required]");

    //check requirements elements
    let isOk = true;

    for (let i = 0; i < elementsRequired.length; i++) {
        const element = elementsRequired[i];
        if (element.value == "") {
            isOk = false;
            Swal.fire({
                icon: 'error',
                title: 'Error!',
                text: 'This form is not valid',
                confirmButtonText: 'OK'
            })
            element.classList.add("invalid");
        }
        else {
            element.classList.remove("invalid");
        }
    }
    //form is valid
    if (isOk) {
        Swal.fire({
            icon: 'success',
            title: 'Data saved successfully',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
            form.reset();
        })
    }
    return false;
}

// Check checkboxes value in localStorage and set attribute in html element
function getChkState() {
    for (let key in window.localStorage)
        if (key.indexOf('check_') == 0) {
            document.getElementById(key).checked = window.localStorage.getItem(key) == 'true';
        }
}

// Set checkbox value in localStorage
function setChkState(id) {
    let checkbox = document.getElementById(id)
    window.localStorage.setItem(id, checkbox.checked);
}

// Check conditions
function checkConditions() {
    if (form["testField1"].value == 'Type 1') {
        form["testField3"].style.visibility = 'hidden';
    }
    else {
        form["testField3"].style.visibility = 'visible';
    }

    if (form["testField1"].value == 'Type 2') {
        form["testField2"].setAttribute('required', '');
        form["testField2"].previousElementSibling.insertAdjacentHTML('afterbegin', '<i class="fa-solid fa-asterisk"></i>');

        form["description"].style.backgroundColor = 'rgba(205,92,92)'; // this row is not needed because it is overriden emediately by the next row
        form["description"].style.backgroundColor = 'rgba(188,143,143)';
    }
    else {
        form["testField2"].removeAttribute('required', '');
        form["testField2"].previousElementSibling.remove('i');

        form["description"].style.backgroundColor = 'rgba(0, 0, 0, 0.1)';
    }

    if (form["testField1"].value == 'Type 3') {
        form["testField8"].readOnly = true;
    }
    else {
        form["testField8"].readOnly = false;
    }

    if (form["number"].value == 'Test') {
        form["testField8"].style.backgroundColor = 'rgba(169,169,169)';
    }
    else {
        form["testField8"].style.backgroundColor = 'rgba(0, 0, 0, 0.1)';
    }
}