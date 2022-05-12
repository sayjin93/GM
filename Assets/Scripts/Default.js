document.addEventListener('DOMContentLoaded', () => {
    getChkState();
})

//form validation
function validateForm() {
    let form = document.forms["form1"];

    //check conditions
    if (form["revision"].value == "") {
        Swal.fire({
            icon: 'error',
            title: 'Error!',
            text: 'This form is not valid',
            confirmButtonText: 'OK'
        })
    }
    //form is valid
    else {
        Swal.fire({
            icon: 'success',
            title: 'Data saved successfully',
            showConfirmButton: false,
            timer: 1500
        }).then(() => {
            form.reset();
        })
    }
}

//check checkboxes value in localStorage and set attribute in html element
function getChkState() {
    for (let key in window.localStorage)
        if (key.indexOf('check_') == 0) {
            document.getElementById(key).checked = window.localStorage.getItem(key) == 'true';
        }
}

//set checkbox value in localStorage
function setChkState(id) {
    let checkbox = document.getElementById(id)
    window.localStorage.setItem(id, checkbox.checked);
}