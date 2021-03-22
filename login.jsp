<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

   <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes">
   <link rel='stylesheet prefetch' href='https://fonts.googleapis.com/css?family=Open+Sans'>
   <link rel="stylesheet" href="css/style.css">
 
<meta charset="UTF-8">
<title>Login</title>

<style>
*, *:before, *:after {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

html, body {
  font-size: 62.5%;
  height: 100%;
  overflow: hidden;
}
@media (max-width: 768px) {
  html, body {
    font-size: 40%;
  }
}

svg {
  display: inline-block;
  width: 2rem;
  height: 2rem;
  overflow: visible;
}

.svg-icon {
  cursor: pointer;
}
.svg-icon path {
  stroke: rgba(255, 255, 255, 0.9);
  fill: none;
  stroke-width: 1;
}

input, button {
  outline: none;
  border: none;
}

.cont {
  position: relative;
  height: 100%;
  background-image: url("https://i.imgur.com/UP7fWfg.jpg");
  background-size: cover;
  overflow: auto;
  font-family: "Open Sans", Helvetica, Arial, sans-serif;
}

.demo {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -15rem;
  margin-top: -26.5rem;
  width: 30rem;
  height: 53rem;
  overflow: hidden;
}

.login {
  position: relative;
  height: 100%;
  background: -webkit-linear-gradient(top, rgba(146, 135, 187, 0.8) 0%, rgba(0, 0, 0, 0.6) 100%);
  background: linear-gradient(to bottom, rgba(146, 135, 187, 0.8) 0%, rgba(0, 0, 0, 0.6) 100%);
  -webkit-transition: opacity 0.1s, -webkit-transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
          transition: opacity 0.1s, transform 0.3s cubic-bezier(0.17, -0.65, 0.665, 1.25);
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
}
.login.inactive {
  opacity: 0;
  -webkit-transform: scale(1.1);
      -ms-transform: scale(1.1);
          transform: scale(1.1);
}
.login__check {
  position: absolute;
  top: 16rem;
  left: 13.5rem;
  width: 14rem;
  height: 2.8rem;
  background: #fff;
  -webkit-transform-origin: 0 100%;
      -ms-transform-origin: 0 100%;
          transform-origin: 0 100%;
  -webkit-transform: rotate(-45deg);
      -ms-transform: rotate(-45deg);
          transform: rotate(-45deg);
}
.login__check:before {
  content: "";
  position: absolute;
  left: 0;
  bottom: 100%;
  width: 2.8rem;
  height: 5.2rem;
  background: #fff;
  box-shadow: inset -0.2rem -2rem 2rem rgba(0, 0, 0, 0.2);
}
.login__form {
  position: absolute;
  top: 50%;
  left: 0;
  width: 100%;
  height: 50%;
  padding: 1.5rem 2.5rem;
  text-align: center;
}
.login__row {
  height: 5rem;
  padding-top: 1rem;
  border-bottom: 1px solid rgba(255, 255, 255, 0.2);
}
.login__icon {
  margin-bottom: -0.4rem;
  margin-right: 0.5rem;
}
.login__icon.name path {
  stroke-dasharray: 73.50196075439453;
  stroke-dashoffset: 73.50196075439453;
  -webkit-animation: animatePath 2s 0.5s forwards;
          animation: animatePath 2s 0.5s forwards;
}
.login__icon.pass path {
  stroke-dasharray: 92.10662841796875;
  stroke-dashoffset: 92.10662841796875;
  -webkit-animation: animatePath 2s 0.5s forwards;
          animation: animatePath 2s 0.5s forwards;
}
.login__input {
  display: inline-block;
  width: 22rem;
  height: 100%;
  padding-left: 1.5rem;
  font-size: 1.5rem;
  background: transparent;
  color: #FDFCFD;
}
.login__submit {
  position: relative;
  width: 100%;
  height: 4rem;
  margin: 5rem 0 2.2rem;
  color: rgba(255, 255, 255, 0.8);
  background: #FF3366;
  font-size: 1.5rem;
  border-radius: 3rem;
  cursor: pointer;
  overflow: hidden;
  -webkit-transition: width 0.3s 0.15s, font-size 0.1s 0.15s;
          transition: width 0.3s 0.15s, font-size 0.1s 0.15s;
}
.login__submit:after {
  content: "";
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -1.5rem;
  margin-top: -1.5rem;
  width: 3rem;
  height: 3rem;
  border: 2px dotted #fff;
  border-radius: 50%;
  border-left: none;
  border-bottom: none;
  -webkit-animation: rotate 0.5s infinite linear;
          animation: rotate 0.5s infinite linear;
  -webkit-transition: opacity 0.1s 0.4s;
          transition: opacity 0.1s 0.4s;
  opacity: 0;
}
.login__submit.processing {
  width: 4rem;
  font-size: 0;
}
.login__submit.processing:after {
  opacity: 1;
}
.login__submit.success {
  -webkit-transition: -webkit-transform 0.3s 0.1s ease-out, opacity 0.1s 0.3s, background-color 0.1s 0.3s;
          transition: transform 0.3s 0.1s ease-out, opacity 0.1s 0.3s, background-color 0.1s 0.3s;
  -webkit-transform: scale(30);
      -ms-transform: scale(30);
          transform: scale(30);
  opacity: 0.9;
}
.login__submit.success:after {
  -webkit-transition: opacity 0.1s 0s;
          transition: opacity 0.1s 0s;
  opacity: 0;
}
.login__signup {
  font-size: 1.2rem;
  color: #ABA8AE;
}
.login__signup a {
  color: #fff;
  cursor: pointer;
}

.app {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  opacity: 0;
  display: none;
  -webkit-transition: opacity 0.1s, -webkit-transform 0.3s cubic-bezier(0.68, -0.45, 0.465, 1.25);
          transition: opacity 0.1s, transform 0.3s cubic-bezier(0.68, -0.45, 0.465, 1.25);
  -webkit-transform: scale(1.2);
      -ms-transform: scale(1.2);
          transform: scale(1.2);
}
.app.active {
  opacity: 1;
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
}
.app.active .app__user-photo {
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
}
.app.active .app__meeting {
  -webkit-transform: translateY(0);
      -ms-transform: translateY(0);
          transform: translateY(0);
  opacity: 1;
}
.app.active .app__logout {
  -webkit-transform: scale(1);
      -ms-transform: scale(1);
          transform: scale(1);
}
.app__top {
  position: relative;
  height: 28rem;
  background: rgba(0, 0, 0, 0.5);
  padding: 6rem 1.5rem 2rem;
  text-align: center;
}
.app__bot {
  position: relative;
  height: 25rem;
  background: #fff;
}
.app__menu-btn {
  position: absolute;
  top: 2rem;
  left: 1.5rem;
  width: 1.8rem;
  height: 1.7rem;
  cursor: pointer;
}
.app__menu-btn span, .app__menu-btn:before, .app__menu-btn:after {
  position: absolute;
  left: 0;
  width: 100%;
  height: 1px;
  background: rgba(255, 255, 255, 0.6);
}
.app__menu-btn span {
  top: 0.8rem;
}
.app__menu-btn:before {
  content: "";
  top: 0;
}
.app__menu-btn:after {
  content: "";
  bottom: 0;
}
.app__icon {
  position: absolute;
  top: 2rem;
}
.app__icon.search {
  right: 1.5rem;
  stroke-dasharray: 61.847137451171875;
  stroke-dashoffset: 61.847137451171875;
  -webkit-animation: animatePath 0.5s 0.5s forwards;
          animation: animatePath 0.5s 0.5s forwards;
}
.app__hello {
  font-size: 2.2rem;
  color: #fff;
  font-weight: normal;
  margin-bottom: 3rem;
}
.app__user {
  position: relative;
  display: inline-block;
  width: 9rem;
  height: 9rem;
  margin-bottom: 3rem;
}
.app__user-photo {
  width: 100%;
  height: 100%;
  border-radius: 50%;
  -webkit-transition: -webkit-transform 0.3s 0.2s cubic-bezier(0.62, 0.35, 0.56, 1.55);
          transition: transform 0.3s 0.2s cubic-bezier(0.62, 0.35, 0.56, 1.55);
  -webkit-transform: scale(0);
      -ms-transform: scale(0);
          transform: scale(0);
}
.app__user-notif {
  position: absolute;
  top: 0;
  right: 0;
  width: 3rem;
  height: 3rem;
  border-radius: 50%;
  line-height: 3rem;
  text-align: center;
  background: #50D2C2;
  color: #fff;
  font-size: 1.5rem;
}
.app__month:after {
  content: "";
  display: table;
  clear: both;
}
.app__month-name {
  display: inline-block;
  color: rgba(255, 255, 255, 0.6);
  font-size: 1.2rem;
  text-transform: uppercase;
}
.app__month-btn {
  display: inline-block;
  width: 1.2rem;
  height: 1.2rem;
  border: 1px solid rgba(255, 255, 255, 0.6);
  border-left: none;
  border-bottom: none;
  cursor: pointer;
}
.app__month-btn.left {
  float: left;
  -webkit-transform: rotate(-135deg);
      -ms-transform: rotate(-135deg);
          transform: rotate(-135deg);
}
.app__month-btn.right {
  float: right;
  -webkit-transform: rotate(45deg);
      -ms-transform: rotate(45deg);
          transform: rotate(45deg);
}
.app__days {
  height: 7rem;
  padding: 1.5rem 2rem;
  display: -webkit-box;
  display: -webkit-flex;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
      -ms-flex-pack: justify;
          justify-content: space-between;
  -webkit-flex-wrap: wrap;
      -ms-flex-wrap: wrap;
          flex-wrap: wrap;
}
.app__day {
  width: 14%;
  text-align: center;
  font-size: 1.2rem;
}
.app__day.weekday {
  color: #919197;
  text-transform: uppercase;
}
.app__day.date {
  font-size: 1.2rem;
  font-weight: bold;
  color: #3C3C43;
}
.app__meeting {
  position: relative;
  height: 6rem;
  border-top: 1px solid #EEEEEF;
  padding: 1rem 2rem 1rem 7.5rem;
  -webkit-transition: -webkit-transform 0.3s, opacity 0.3s;
          transition: transform 0.3s, opacity 0.3s;
  -webkit-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
          transform: translateY(-50%);
  opacity: 0;
}
.app__meeting:nth-child(1) {
  -webkit-transition-delay: 0.2s;
          transition-delay: 0.2s;
}
.app__meeting:nth-child(2) {
  -webkit-transition-delay: 0.3s;
          transition-delay: 0.3s;
}
.app__meeting:nth-child(3) {
  -webkit-transition-delay: 0.4s;
          transition-delay: 0.4s;
}
.app__meeting:nth-child(4) {
  -webkit-transition-delay: 0.5s;
          transition-delay: 0.5s;
}
.app__meeting:nth-child(5) {
  -webkit-transition-delay: 0.6s;
          transition-delay: 0.6s;
}
.app__meeting-photo {
  position: absolute;
  left: 2rem;
  top: 1rem;
  width: 4rem;
  height: 4rem;
}
.app__meeting-name {
  color: #000;
  font-size: 1.3rem;
}
.app__meeting-info {
  color: #949498;
  font-size: 1.1rem;
}
.app__logout {
  position: absolute;
  bottom: 3.3rem;
  right: 3.3rem;
  width: 4.6rem;
  height: 4.6rem;
  margin-right: -2.3rem;
  margin-bottom: -2.3rem;
  background: #FC3768;
  color: #fff;
  font-size: 2rem;
  border-radius: 50%;
  cursor: pointer;
  -webkit-transition: bottom 0.4s 0.1s, right 0.4s 0.1s, -webkit-transform 0.4s 0.4s, opacity 0.1s 0.7s, background-color 0.1s 0.7s;
          transition: bottom 0.4s 0.1s, right 0.4s 0.1s, transform 0.4s 0.4s, opacity 0.1s 0.7s, background-color 0.1s 0.7s;
  -webkit-transform: scale(0);
      -ms-transform: scale(0);
          transform: scale(0);
}
.app__logout.clicked {
  bottom: 50%;
  right: 50%;
  -webkit-transform: scale(30) !important;
      -ms-transform: scale(30) !important;
          transform: scale(30) !important;
  opacity: 0.9;
}
.app__logout.clicked svg {
  opacity: 0;
}
.app__logout-icon {
  position: absolute;
  width: 3rem;
  height: 3rem;
  top: 50%;
  left: 50%;
  margin-left: -1.5rem;
  margin-top: -1.5rem;
  -webkit-transition: opacity 0.1s;
          transition: opacity 0.1s;
}
.app__logout-icon path {
  stroke-width: 4px;
  stroke-dasharray: 64.36235046386719;
  stroke-dashoffset: 64.36235046386719;
  -webkit-animation: animatePath 0.5s 0.5s forwards;
          animation: animatePath 0.5s 0.5s forwards;
}

.ripple {
  position: absolute;
  width: 15rem;
  height: 15rem;
  margin-left: -7.5rem;
  margin-top: -7.5rem;
  background: rgba(0, 0, 0, 0.4);
  -webkit-transform: scale(0);
      -ms-transform: scale(0);
          transform: scale(0);
  -webkit-animation: animRipple 0.4s;
          animation: animRipple 0.4s;
  border-radius: 50%;
}

@-webkit-keyframes animRipple {
  to {
    -webkit-transform: scale(3.5);
            transform: scale(3.5);
    opacity: 0;
  }
}

@keyframes animRipple {
  to {
    -webkit-transform: scale(3.5);
            transform: scale(3.5);
    opacity: 0;
  }
}
@-webkit-keyframes rotate {
  to {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@keyframes rotate {
  to {
    -webkit-transform: rotate(360deg);
            transform: rotate(360deg);
  }
}
@-webkit-keyframes animatePath {
  to {
    stroke-dashoffset: 0;
  }
}
@keyframes animatePath {
  to {
    stroke-dashoffset: 0;
  }
}

</style>
</head>
<body>
    <div class="cont">
	<h1 style="margin-left: 650px;margin-top:30px;margin-bottom: -50px;font-size: 40px;">LOGIN PAGE</h1>
<form>
  <div class="demo">
    <div class="login">
      <div class="login__check"></div>
      <div class="login__form">
        <div class="login__row">
          <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
          </svg>
          <input type="text" class="login__input name" placeholder="Username"/>
        </div>
        <div class="login__row">
          <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
            <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
          </svg>
          <input type="password" class="login__input pass" placeholder="Password"/>
        </div>
        <button type="button" class="login__submit" >Sign in</button>
        <p class="login__signup">Don't have an account? &nbsp;<a href="register.jsp">Sign up</a></p>
      </div>
    </div>
    <div class="app">
      <div class="app__top">
        <div class="app__menu-btn">
          <span></span>
        </div>
        <svg class="app__icon search svg-icon" viewBox="0 0 20 20">
          <!-- yeap, its purely hardcoded numbers straight from the head :D (same for svg above) -->
          <path d="M20,20 15.36,15.36 a9,9 0 0,1 -12.72,-12.72 a 9,9 0 0,1 12.72,12.72" />
        </svg>
      </div>
      <div class="app__logout">
        <svg class="app__logout-icon svg-icon" viewBox="0 0 20 20">
          <path d="M6,3 a8,8 0 1,0 8,0 M10,0 10,12"/>
        </svg>
      </div>
    </div>
  </div>
</form>
</div>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>


</body>
</html>