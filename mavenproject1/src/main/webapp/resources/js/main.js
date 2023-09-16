function deleteCompany(path) {
    if (confirm("Bạn chắc chắn xóa không?") === true) {
        fetch(path, {
            method: "delete"
        }).then(res => {
            if (res.status === 204)
                location.reload();
            else
                alert("Hệ thống có lỗi! Vui lòng quay lại sau!");
        });
    }
}

function showPassword() {
  var passwordField = document.getElementById("pwd");
  passwordField.type = "text";
}

function updateActive(path) {
    if (confirm("Bạn chắc chắn duyệt không?") === true) {
        fetch(path, {
            method: "put"
        }).then(res => {
            if (res.status === 204)
                location.reload();
            else
                alert("Hệ thống có lỗi! Vui lòng quay lại sau!");
        });
    }
}

function deJob(){
     if (confirm("Bạn chắc chắn hủy không?") === true) {
         document.getElementById("title").value = "";
         document.getElementById("description").value = "";
         document.getElementById("benefits").value = "";
         document.getElementById("skill").value = "";
         document.getElementById("quantity").value = "";
         document.getElementById("address").value = "";
         document.getElementById("salary").value = "";
         document.getElementById("outOffTime").value = "";
     }
}

function deUser(){
     if (confirm("Bạn chắc chắn hủy không?") === true) {
         document.getElementById("name").value = "";
         document.getElementById("birthDate").value = "";
         document.getElementById("mail").value = "";
         document.getElementById("phone").value = "";
         document.getElementById("username").value = "";
         document.getElementById("password").value = "";
         document.getElementById("confirmPassword").value = "";
         document.getElementById("outOffTime").value = "";
         document.getElementById("file").value = ""; 
     }
}

function deCate(){
     if (confirm("Bạn chắc chắn hủy không?") === true) {
         document.getElementById("name").value = "";
         document.getElementById("description").value = "";    
     }
}

function deLoca(){
     if (confirm("Bạn chắc chắn hủy không?") === true) {
         document.getElementById("name").value = "";
         document.getElementById("description").value = "";    
     }
}

function deCompa(){
     if (confirm("Bạn chắc chắn hủy không?") === true) {
         document.getElementById("name").value = "";
         document.getElementById("mail").value = "";
         document.getElementById("phone").value = "";
         document.getElementById("address").value = "";
         document.getElementById("dateOfIncorporation").value = "";
         document.getElementById("description").value = "";
         document.getElementById("scale").value = "";
         document.getElementById("linkCompany").value = "";  
         document.getElementById("username").value = ""; 
         document.getElementById("password").value = ""; 
         document.getElementById("confirmPassword").value = ""; 
         document.getElementById("file").value = ""; 
     }
}