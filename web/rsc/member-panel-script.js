let bioEditBtnCnt = document.getElementById("bio-edit-button-cont");
let bioEditingButtonsCont = document.getElementById("bio-editing-buttons-cont");

let akunEditBtnCnt = document.getElementById("akun-edit-button-cnt");
let akunEditingBtnCnt = document.getElementById("akun-editing-buttons-cnt");

let nmDpnInp = document.getElementById("nama-depan-input");
let nmTghInp = document.getElementById("nama-tengah-input");
let nmBlkInp = document.getElementById("nama-belakang-input");

let pass1Inp = document.getElementById("pass1-input");
let pass2Inp = document.getElementById("pass2-input");

function bioEditingToggle() {
    refresh();
    if (bioEditBtnCnt.style.display === "none") {
        bioEditBtnCnt.style.display = "";
    } else if (bioEditBtnCnt.style.display === "") {
        bioEditBtnCnt.style.display = "none";
    }

    if (bioEditingButtonsCont.style.display === "none") {
        bioEditingButtonsCont.style.display = "";
    } else if (bioEditingButtonsCont.style.display === "") {
        bioEditingButtonsCont.style.display = "none";
    }

    nmDpnInp.disabled = !nmDpnInp.disabled;
    nmTghInp.disabled = !nmTghInp.disabled;
    nmBlkInp.disabled = !nmBlkInp.disabled;
}

function akunEditingToggle() {
    refresh();
    if (akunEditBtnCnt.style.display === "none") {
        akunEditBtnCnt.style.display = "";
    } else if (akunEditBtnCnt.style.display === "") {
        akunEditBtnCnt.style.display = "none";
    }

    if (akunEditingBtnCnt.style.display === "none") {
        akunEditingBtnCnt.style.display = "";
    } else if (akunEditingBtnCnt.style.display === "") {
        akunEditingBtnCnt.style.display = "none";
    }

    pass1Inp.disabled = !pass1Inp.disabled;
    pass2Inp.disabled = !pass2Inp.disabled;
    document.getElementById("email-input").disabled = !document.getElementById("email-input").disabled
}

function validateAccountInput(form){
    const pass1 = form.passInput1.value;
    const pass2 = form.passInput2.value;
    
    if(pass1 !== pass2){
        document.getElementById("pass1-input").className = "input is-danger";
        document.getElementById("pass2-input").className = "input is-danger";
        
        return false;
    } else {
        document.getElementById("pass1-input").className = "input is-success";
        document.getElementById("pass2-input").className = "input is-success";
        
        return true;
    }
}

function refresh() {
    bioEditBtnCnt = document.getElementById("bio-edit-button-cont");
    bioEditingButtonsCont = document.getElementById("bio-editing-buttons-cont");

    akunEditBtnCnt = document.getElementById("akun-edit-button-cnt");
    akunEditingBtnCnt = document.getElementById("akun-editing-buttons-cnt");

    nmDpnInp = document.getElementById("nama-depan-input");
    nmTghInp = document.getElementById("nama-tengah-input");
    nmBlkInp = document.getElementById("nama-belakang-input");

    pass1Inp = document.getElementById("pass1-input");
    pass2Inp = document.getElementById("pass2-input");
}
