<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <style>
    * {
  margin: 0;
  padding: 0;
  -webkit-box-sizing: border-box;
          box-sizing: border-box; }

body {
  font-family: 'Montserrat', sans-serif; }

.wrapper {
  position: absolute;
  top: 50%;
  left: 50%;
  -webkit-transform: translate(-50%, -50%);
          transform: translate(-50%, -50%);
  width: 70%;
  margin: 0 auto;
  background: #EBEBEB;
  padding: 20px 30px;
  border-radius: 8px; }

h1 {
  text-align: center; }

.form-container {
  width: 100%;
  margin: 10px auto;
  -webkit-box-orient: horizontal;
  -webkit-box-direction: normal;
      -ms-flex-direction: row;
          flex-direction: row; }

.flex {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: space-evenly;
      -ms-flex-pack: space-evenly;
          justify-content: space-evenly;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center; }

.flex-item {
  width: 40%;
  height: 100%; }

label {
  display: block;
  font-size: 20px; }

.field-container {
  padding: 5px 10px;
  margin: 10px 0 10px; }

.required {
  color: red;
  font-size: 1.1em; }

.field-container > input, .passkey-box > input {
  width: 100%;
  display: inline-block;
  padding: 7px 15px;
  font-size: 18px;
  margin: 5px 0 3px;
  border-radius: 3px;
  outline: none;
  border: none;
  border-bottom: 2px solid black; }

.passkey-box {
  position: relative; }

.passkey-icon {
  position: absolute;
  right: 10px;
  top: 50%;
  -webkit-transform: translateY(-50%);
          transform: translateY(-50%);
  font-size: 1.2em; }

.field-container > input:focus, .passkey-box > input:focus {
  border-bottom: 2px solid dodgerBlue; }

.error-messg {
  display: block;
  color: red;
  font-weight: 300; }

.center {
  text-align: center; }

input[type='submit'] {
  padding: 10px 30px;
  font-size: 1.2em;
  background: dodgerBlue;
  border: 1px solid white;
  outline: none;
  color: white;
  border-radius: 3px; }

@media screen and (max-width: 576px) {
  .wrapper {
    width: 100%;
    padding: 100px 10px 30px;
    border-radius: 0; }

  h1 {
    margin-top: 50px; }

  .flex {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column; }

  .flex-item {
    width: 100%; } }
@media screen and (min-width: 576px) {
  .wrapper {
    width: 80%;
    padding: 100px 10px 30px;
    border-radius: 0; }

  .flex {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: vertical;
    -webkit-box-direction: normal;
        -ms-flex-direction: column;
            flex-direction: column; }

  .flex-item {
    width: 100%; } }
@media screen and (min-width: 662px) {
  .wrapper {
    width: 70%;
    padding: 100px 10px 30px;
    border-radius: 0; }

  .flex-item {
    width: 90%;
    height: 100%; } }
@media screen and (min-width: 768px) {
  .wrapper {
    width: 80%;
    padding: 30px 10px;
    border-radius: 0; }

  .flex {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-orient: horizontal;
    -webkit-box-direction: normal;
        -ms-flex-direction: row;
            flex-direction: row; }

  .flex-item {
    width: 40%;
    height: 100%; } }
@media screen and (min-width: 992px) {
  .wrapper {
    max-width: 876px;
    padding: 30px 10px;
    border-radius: 0; } }

/*# sourceMappingURL=style.css.map */
  </style>
</head>
<body>

<!--Main wrapper-->
<div class="wrapper">
    <h1>Registration form</h1>

    <!--form container-->
    <div class="form-container">
    <form action="appointment.jsp" method="post">
        <!--flexbox and it's items-->
        <div class="flex">
            <div class="flex-item">
            <!--full name field-->
                <div class="field-container">
                    <label for="full-name">First Name: <span class="required">*</span></label>
                    <input type="text" name="full-name"   pattern="^([a-zA-Z]{2,} ?)+$" id="full-name" placeholder="Your First name" required="required" />
                    <span class="error-messg"></span>              
                </div>

                <div class="field-container">
                    <label for="full-name">Last Name: <span class="required">*</span></label>
                    <input type="text" name="full-name"   pattern="^([a-zA-Z]{2,} ?)+$" id="full-name" placeholder="Your Last name" required="required" />
                    <span class="error-messg"></span>              
                </div>
            
             <!--email field-->
                <div class="field-container">
                    <label for="email">Email: <span class="required">*</span></label>
                    <input type="email" name="email" id="email" placeholder="Your email" required="required" />
                    <span class="error-messg"></span>
                </div>

             <!--confirm email field-->
                  <div class="field-container">
                      <label for="confirm-email">Age: <span class="required">*</span></label>
                      <input type="number" name="age" id="age" placeholder="Age" required="required" />
                      <span class="error-messg"></span>
                  </div>

                  <div class="field-container">
                      <label for="Gender" style="margin-bottom: 10px; ">Gender : <span class="required">*</span></label>
                      <input type="radio" name="gender" value="male"> 
                      <label for="gender" style="margin-top: -20px">Male</label>
                      <input type="radio" name="gender" value="female">
                      <label for="Female" style="margin-top: -20px;">Female</label>
                      <input type="radio" name="gender" value="other"> 
                      <label for="Gender" style="margin-top: -20px;">Other</label>
                      <span class="error-messg"></span>
                  </div>
                
            </div>
            <div class="flex-item">

                <div class="field-container" style="margin-top:-110px;">
                    <label for="contact-no">Address: <span class="required">*</span></label>
                    <input type="text" name="contact-no" id="Address" placeholder="Address" required="required" />
                    <span class="error-messg"></span>
                </div>

                <!--contact no field-->
                <div class="field-container">
                    <label for="contact-no">Contact no.: <span class="required">*</span></label>
                    <input type="tel" name="contact-no" pattern=[0-9]{10} id="contact-no" placeholder="Mobile number" required="required" />
                    <span class="error-messg"></span>
                </div>

                <!--password field-->
                <div class="field-container">
                    <label for="passkey">Password: <span class="required">*</span></label>
                    <div class="passkey-box">
                    <input type="password" name="passkey" id="passkey" class="passkey" placeholder="Password" required="required" />
                    <span class="passkey-icon" data-display-passkey="off"><i class="fas fa-eye"></i>  </span>
                    </div>
                    <span class="error-messg"></span>
                </div>

                <!--confirm password field-->
                <div class="field-container">
                    <label for="confirm-passkey">Confirm password: <span class="required">*</span></label>
                    <div class="passkey-box">
                    <input type="password" name="confirm-passkey" class="passkey" id="confirm-passkey" placeholder="Re-enter password" required="required" />
                    <span class="passkey-icon" data-display-passkey="off"><i class="fas fa-eye"></i></span>
                    </div>
                    <span class="error-messg"></span>
                </div>
                
            </div>
        </div>
        <!--Submit button-->
        <div class="center"><input type="submit" value="Register"></div>
        <p style="margin-left: 320px;margin-top: 20px;">Already Have Account? <a href="login.jsp">Login</a></p>
    </form>
    </div>

</div>
<script>
  //full name validation
document.querySelector('#full-name').addEventListener('blur',(event)=>{
    let err = document.querySelector(".error-messg");
    err.innerText = "";
    try{
        //if field empty
        if(event.target.validity.valueMissing)
            throw event.target.validationMessage;
        
        else if(event.target.validity.patternMismatch){
            //event.target.setCustomValidity("Enter A valid name");
            throw "Please enter a valid name!";
        }

        else{
            event.target.style.borderBottomColor = 'green';
            err.innerText = "";
        }
    }

    catch(messg){
        err.innerText = messg;
    }
    
});


//to validate email
document.querySelector('#email').addEventListener('blur',(event)=>{
    validateEmail(event);
});

//to validate confirm email
document.querySelector('#confirm-email').addEventListener('blur',(event)=>{
    validateEmail(event);
    validateConfirmation(document.querySelector('#email'),event.target);
});


//function for email and confirm email validation
function validateEmail(event){
    let error = event.target.nextElementSibling;
    error.innerText = "";
    try{
        
        if(event.target.validity.valueMissing)
            throw event.target.validationMessage;

        else if(!event.target.validity.valid || event.target.value.slice(-4)!='.com')
            throw "Please enter a valid email.";

        else
            event.target.style.borderBottom = '2px solid green';
         
    }

    
    catch(messg){
        error.innerText = messg;
    }

}

//for validating confirm 
function validateConfirmation(el,cEl){
    if(el.value == cEl.value){
        cEl.nextElementSibling.innerText = "";
        document.querySelector('[type="submit"]').removeAttribute('disabled');
    }

    else{
        cEl.nextElementSibling.innerText = "Confirm email not mached!";
        document.querySelector('[type="submit"]').setAttribute('disabled',"disabled");
    }
}


//validating contact number
document.querySelector('#contact-no').addEventListener('blur',function(event){
    let error = event.target.nextElementSibling ;
    error.innerText = "";
    try{
        if(event.target.validity.valueMissing)
            throw event.target.validationMessage;

        else if(event.target.value.length!=10)
            throw "Please enter 10 digit mobile number.";

        else    
            event.target.style.borderBottom = "2px solid green";
    }
    catch(messg){
        error.innerText = messg;
    }
});


//password show/hide functionality
document.querySelector('.passkey-icon').addEventListener('click',displayPassword);
document.querySelectorAll('.passkey-icon')[1].addEventListener('click',displayPassword);

function displayPassword(event){
    if(event.target.parentNode.getAttribute('data-display-passkey')=='off'){
        event.target.parentNode.setAttribute('data-display-passkey','on');
        event.target.setAttribute('class','fas fa-eye-slash');
        event.target.parentElement.previousSibling.previousSibling.setAttribute('type','text');
        console.log(event.target.parentElement.previousSibling.previousSibling);
    }
    else{
        event.target.parentNode.setAttribute('data-display-passkey','off');
        event.target.setAttribute('class','fas fa-eye');
        event.target.parentElement.previousSibling.previousSibling.setAttribute('type','password');
    }
}


//adding to password field
document.querySelector("#passkey").addEventListener('blur',validatePassword);

//password validation
function validatePassword(event){
    let error = event.target.parentElement.nextElementSibling;
    error.innerText = "";
    try{
        console.log((event.target.value));
        console.log();
    if(event.target.validity.valueMissing)
        throw event.target.validationMessage;

    else if(!(/[0-9]{4,}/g).test(event.target.value)){
        throw "There must be atleast 4 digit.";
    }

    else if(event.target.value.length<8 || event.target.value.length>15){
        
        throw "Password must be 8 to 15 charaters.";
    }

    else{
        document.querySelector('[type="submit"]').removeAttribute('disabled');
        event.target.style.borderBottom = "2px solid green";
    }

    }
    catch(messg){
        document.querySelector('[type="submit"]').setAttribute('disabled',"disabled");
        error.innerText = messg;
    }
    console.log(error);
}


//confirm password validation
document.querySelector('#confirm-passkey').addEventListener('blur',function(event){
    try{
        var error = document.querySelectorAll('.error-messg')[5];
        error.innerText = "";
        if(event.target.validity.valueMissing)
            throw event.target.validationMessage;

        else if(document.querySelector('#passkey').value != event.target.value){
            throw "Password not matched!";
        }

        else{
            document.querySelector('[type="submit"]').removeAttribute('disabled');
            event.target.style.borderBottom = "2px solid green";
        }
    }

    catch(messg){
        document.querySelector('[type="submit"]').setAttribute('disabled',"disabled");
        error.innerText = messg;
    }
});

console.log(document.querySelector('#email'));
</script>

</body>
</html>