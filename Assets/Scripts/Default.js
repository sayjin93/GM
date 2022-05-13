// Run function when DOM Content has loaded
document.addEventListener('DOMContentLoaded', init);

// Declare form
let form = document.forms["form1"];

// Function to run when DOM Content has loaded
function init(event) {
    getChkState();
    checkTestField1();
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

// Check checkboxes value in localStorage and set attribute in html element (included in init)
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

// Check conditions for checkTestField1 (included in init)
function checkTestField1() {
    // Reset previous modification
    form["testField3"].style.visibility = 'visible';
    form["testField3"].previousElementSibling.style.visibility = 'visible';
    form["testField2"].removeAttribute('required', '');
    if (form["testField2"].previousElementSibling.children[0] != null) {
        form["testField2"].previousElementSibling.children[0].remove();
    }
    form["description"].style.backgroundColor = 'rgba(0, 0, 0, 0.1)';
    form["testField8"].readOnly = false;

    if (form["testField1"].value == 'Type 1') {
        // If Type 1 is selected
        form["testField3"].style.visibility = 'hidden';
        form["testField3"].previousElementSibling.style.visibility = 'hidden';
    }
    else if (form["testField1"].value == 'Type 2') {
        // If Type 2 is selected
        form["testField2"].setAttribute('required', '');
        form["testField2"].previousElementSibling.insertAdjacentHTML('afterbegin', '<i class="fa-solid fa-asterisk"></i>');

        form["description"].style.backgroundColor = 'rgba(205,92,92)'; // this row is not needed because it is overriden immediately by the next row
        form["description"].style.backgroundColor = 'rgba(188,143,143)';
    }
    else {
        // If Type 3 is selected
        form["testField8"].readOnly = true;
    }
}

// Check conditions for number (executed onkeyup)
function checkNumber() {
    if (form["number"].value == 'Test') {
        form["testField8"].style.backgroundColor = 'rgba(169,169,169)';
    }
    else {
        form["testField8"].style.backgroundColor = 'rgba(0, 0, 0, 0.1)';
    }
}
