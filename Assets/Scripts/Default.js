let data = {
    "tabs": [
        { "id": 1, "tabName": "Tab 1", "icon": "fa-table-columns", "hasGroupd": true },
        { "id": 2, "tabName": "Tab 2", "icon": "fa-table-columns", "hasGroupd": false },
        { "id": 3, "tabName": "Tab 3", "icon": "fa-table-columns", "hasGroupd": false },
    ],
    "groups": [
        { "id": 1, "groupName": "Group 1", "icon": "fa-table-columns", "groupTab": 1 },
        { "id": 2, "groupName": "Group 2", "icon": "fa-table-columns", "groupTab": 1 },
        { "id": 3, "groupName": "Group 3", "icon": "fa-table-columns", "groupTab": 1 },
    ],
    "formElements": [
        { "id": 1, "group": 1, "name": "revision", "label": "Revision", "type": "text", "required": true },
        { "id": 2, "group": 1, "name": "description", "label": "description", "type": "text", "required": true },
        { "id": 3, "group": 1, "name": "effectivity_begin", "label": "Effectivity Begin", "type": "text", "required": true },
        { "id": 4, "group": 1, "name": "testField1", "label": "TestField 1", "type": "select", "required": true },
        { "id": 5, "group": 1, "name": "testField2", "label": "TestField 2", "type": "text", "required": false },
        { "id": 6, "group": 1, "name": "testField3", "label": "TestField 3", "type": "text", "required": false },
        { "id": 7, "group": 1, "name": "number", "label": "Number", "type": "text", "required": false },
    ]
}

Object.entries(data).forEach(entry => {
    const [key, value] = entry;
    console.log(key, value);
});

// Run function when DOM Content has loaded
document.addEventListener('DOMContentLoaded', init);

// Declare form
let form = document.forms["form1"];

// Function to run when DOM Content has loaded
function init(event) {
    createTabs();
    getChkState();
    //checkTestField1();
}

// Form validation
function validateForm(e) {
    e.preventDefault();

    let elementsRequired = document.forms["form1"].querySelectorAll("[required]");
    let isOk = true;

    //check requirements elements
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
            //clear form
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

// Download image on button click
const downloadBtn = document.getElementById('downloadImage');
const imageUrl = document.getElementsByClassName('img2Down')[0].getElementsByTagName('img')[0].currentSrc;

downloadBtn.addEventListener('click', (event) => {
    event.preventDefault();
    downloadImage(imageUrl);
})

async function downloadImage(imageUrl) {
    fetch(imageUrl, {
        mode: 'no-cors',
    })
        .then(response => response.blob())
        .then(blob => {
            let blobUrl = window.URL.createObjectURL(blob);
            let a = document.createElement('a');
            a.download = imageUrl.replace(/^.*[\\\/]/, '');
            a.href = blobUrl;
            document.body.appendChild(a);
            a.click();
            a.remove();
        })
}

function createTabs() {
    let tabsHtml = "";

    data.tabs.forEach((element, index) => {
        tabsHtml += "<div class='tab'>";
        tabsHtml += "   <label for='tab-" + element.id + "'> <i class='fa-solid " + element.icon + "'></i>" + element.tabName + "</label>";
        tabsHtml += "    <input id='tab-" + element.id + "' name='tabs' type='radio'" + (index == 0 ? 'checked' : '') + " />";
        tabsHtml += "   <div>" + (element.hasGroupd ? createGroups(element.id) : insertForm(element.id)) + "</div>";
        tabsHtml += "</div>";
    });

    document.getElementById("tabs").insertAdjacentHTML('beforeend', tabsHtml);
}

function createGroups(tabId) {
    let groupsHtml = "";

    data.groups.forEach((element, index) => {
        if (element.groupTab == tabId) {
            groupsHtml += "<div class='accordion'>";
            groupsHtml += "   <input type='checkbox' name='check_" + element.id + "' id='check_" + element.id + "' onclick='setChkState(\"check_" + element.id + "\")'" + (index == 0 ? 'checked' : '') + " />";
            groupsHtml += "   <label class='accordion-label' for='check_" + element.id + "'><i class='fa-solid " + element.icon + "'></i>" + element.groupName + "</label>";
            groupsHtml += "   <div class='accordion-content'>" + insertForm(element.id) + "</div>";
            groupsHtml += "</div>";
        }
    });

    return groupsHtml;
}

function insertForm(groupId) {
    let formHtml = "";

    data.formElements.forEach((element) => {
        if (element.group == groupId) {
            formHtml += " <div class='form-group'>";
            formHtml += "   <label for='" + element.name + "'>" + (element.required == true ? '<i class=\'fa-solid fa-asterisk\'></i>' : '') + (element.label).toUpperCase() + "</label>";

            if (element.type == 'text') {
                formHtml += "<input id='" + element.name + "' name='" + element.name + "' type='" + element.type + "' " + (element.required == true ? 'required' : '') + "/>";
            }
            else if (element.type == 'select') {
                formHtml += "<select id='" + element.name + "' name='" + element.name + "' onchange='checkTestField1()' " + (element.required == true ? 'required' : '') + "></select>";
            }

            formHtml += "</div>";
        }
    });

    return formHtml;

    //return 'Forma e Tab' + tabId + (groupId ? '(Group ' + groupId + ')' : '');
};