function validateForm() {
    let form = document.forms["form1"];

    if (form["revision"].value == "") {
        Swal.fire({
            icon: 'error',
            title: 'Error!',
            text: 'This form is not valid',
            confirmButtonText: 'OK'
        })
    }
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