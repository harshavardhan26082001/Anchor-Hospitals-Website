<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Barlow:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/fonts.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<style>
    <style>
.column {
  float: left;
  width: 33.33%;
  padding: 5px;
}

/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
}


div{
    margin: 0px;
    padding: 0px;
}
ul{
    padding: 0px;
    margin: 0px;
}
li{
    list-style: none;
    padding: 0px;
    margin: 0px;
}
a{
    text-decoration: none;
    padding: 0px;
    margin: 0px;
}

/*Top Menu*/
.header-top{
    width: 100%;
    height: 105px;
    background-color: rgb(43, 43, 43);
    position: relative;
    z-index: 1;
}

.nav-top{
    width: 100%;
    margin-left: auto;
    margin-right: auto;
    display: flex;
}

.nav-left img{
    width: 116px;
    margin-top: 10px;
    margin-left: 285px;
}

.nav-right{
    margin-left: auto;
}

.nav-left > ul > li > a{
    font-family: 'Barlow', sans-serif;
    font-size: 0.9rem;
    color: rgb(167, 167, 167);
}

.nav-left > ul > li > a:hover{
    color: rgb(255, 255, 255);
}

.nav-left ul li .active{
    color: rgb(230, 230, 230);
    font-weight: 400;
}

.link-bottom:after{
    border-left: 6px solid transparent;
    border-right: 6px solid transparent;
    border-bottom: 6px solid rgb(255, 255, 255);
    border-top: none;
    height: 0;
    width: 0;
    content: ' ';
    position: relative;
    left: 40%;
    top: -6px;

}

.nav-left > ul > li{
    float: left;
    padding: 15px;
    padding-top: 20px;
    
}
.nav-left > ul{
    margin-left: 270px;
    margin-top: -10px;
}
.nav-left{
    position: absolute;
    width: 100%;
    z-index: -1;
}
.pull-space{
    display: flex;
    justify-content: space-between;
    margin-right: 270px;
    margin-top: 10px;
}

.pull-space li{
    margin: 10px;
}

.pull-space > li > a{
    color: rgb(167, 167, 167);
    font-size: 0.90rem;
    font-family: 'Barlow', sans-serif;
}

.pull-space > li > a:hover{
    color: rgb(224, 224, 224);
}

.top-nav-dropdown{
    height: 40px;
}

.top-nav-dropdown > ul{
    display: none;
    width: 280px;
    height: auto;
    background-color: rgb(255, 255, 255);
    box-shadow: -1px 0px 26px 0px rgba(0,0,0,0.17);
    margin-left: -100px;
    border-radius: 6px;

}

.top-nav-dropdown:hover > ul{
    display: block;
    position: absolute;
    top: 50px;
    z-index: 10;

}

.top-nav-dropdown > ul > li{
    height: auto;
    width: auto;
    text-align: left;
    padding-left: 40px;
    margin: 0px;
  margin-top: 0px;
    border-left: 0px solid black;
    transition: all .10s;
}
.top-nav-dropdown > ul > li > a{
    width: 100%;
    font-family: 'Barlow', sans-serif;
    font-size: 0.8rem;
    color: rgb(138, 138, 138);
}

.top-nav-dropdown > ul > li > a span{
    display: flex;
    margin-left: -5px;
    margin-bottom: 18px;
}

.top-nav-dropdown .logo img{
    width: 60px;
    margin-top: 15px;
    margin-left: -5px;
}

.top-nav-dropdown ul li a:hover{
    color: black;
}

.top-nav-dropdown ul li:hover{
    border-left: 4px solid black;
    transition: all .10s;
}

.top-nav-dropdown ul li:nth-child(3){
    border-bottom: 1px solid rgb(221, 221, 221);
}

.top-nav-dropdown .text{
    margin-top: 20px;
    margin-bottom: 20px;
    display: block;

}

.top-nav-dropdown .text span{
    margin: 0px;
    font-size: 0.8rem;
    
}

.top-nav-dropdown .text span u{
    color: black;
    padding-left: 4px;
    font-family: 'Work Sans', sans-serif;
    font-weight: bold;
    font-size: 0.8rem;
    
}
/*Top Menu End*/

.nav-url-bottom{
    width: 100%;
    height: 50px;
    margin-top: 55px;
    position: absolute;
    border-bottom: 1px solid rgb(226, 226, 226);
}
.nav-url-bottom > ul{
    margin-left: 270px;
    width: 700px;
}
.nav-url-bottom > ul > li{
    width: 100%;
    margin-top: 16px;
}
.nav-url-bottom > ul > li > a{
    padding-right: 20px;
    padding-left: 20px;
    padding-top: 10px;
    padding-bottom: 10px;
    font-family: Ubuntu-Medium;
    font-size: 0.75em;
    color: rgb(110, 110, 110);
    transition: all .4s;

}

.nav-url-bottom > ul > li > a:hover{
    width: 100px;
    height: 55px;
    background-color: rgb(102, 102, 102);
    color: rgb(255, 255, 255);
    border-radius: 4px 4px 0 0;
    transition: all .4s;
}


/*start2*/
    body{
  background-color: #2F3242;
    margin: 0px;
    padding: 0px;

}
svg {
  position: absolute;
  top: 50%;
  left: 50%;
  margin-left: -200px;
  margin-top: -200px;
}
.message-box {
  height: 200px;
  width: 380px;
  position: absolute;
  top: 50%;
  left: 30%;
  margin-left:200px;
  color: #FFF;
  font-family: Roboto;
  font-weight: 300;
}
.message-box h1 {
  font-size: 60px;
  line-height: 46px;
  margin-bottom: 40px;
}
.buttons-con .action-link-wrap {
  margin-top: 40px;
}
.buttons-con .action-link-wrap a {
  background: #68c950;
  padding: 8px 25px;
  border-radius: 4px;
  color: #FFF;
  font-weight: bold;
  font-size: 14px;
  transition: all 0.3s linear;
  cursor: pointer;
  text-decoration: none;
  margin-right: 10px
}
.buttons-con .action-link-wrap a:hover {
  background: #5A5C6C;
  color: #fff;
}

#Polygon-1 , #Polygon-2 , #Polygon-3 , #Polygon-4 , #Polygon-4, #Polygon-5 {
  animation: float 1s infinite ease-in-out alternate;
}
#Polygon-2 {
  animation-delay: .2s; 
}
#Polygon-3 {
  animation-delay: .4s; 
}
#Polygon-4 {
  animation-delay: .6s; 
}
#Polygon-5 {
  animation-delay: .8s; 
}

@keyframes float {
  100% {
    transform: translateY(20px);
  }
}
@media (max-width: 450px) {
  svg {
    position: absolute;
    top: 50%;
    left: 50%;
  }
  .message-box {
    top: 50%;
    left: 50%;
    text-align: center;
  }
}


        #footer .twitter{
background-image: url(http://manstyle.coralixthemes.com/dark/img/dark/icons/footer-icons.png);
background-repeat: no-repeat;
background-position: 0 0;
} 
#footer .linkedin{
background-image: url(http://manstyle.coralixthemes.com/dark/img/dark/icons/footer-icons.png);
background-repeat: no-repeat;
background-position: -78px 0;
}   
#footer .facebook{
background-image: url(http://manstyle.coralixthemes.com/dark/img/dark/icons/footer-icons.png);
background-repeat: no-repeat;
background-position: -233px 0;
}    
#footer .skype{
background-image: url(http://manstyle.coralixthemes.com/dark/img/dark/icons/footer-icons.png);
background-repeat: no-repeat;
background-position: -156px 0;
}    
#footer .flickr{
background-image: url(http://manstyle.coralixthemes.com/dark/img/dark/icons/footer-icons.png);
background-repeat: no-repeat;
background-position: -310px 0;
}    
#footer a{
height: 56px;
width: 56px;
display: inline-block;
margin: 10px;
}                                 
#footer a:hover{
transition: all 0.3s ease-out;
-webkit-transition: all 0.3s ease-out;
}   
#footer .twitter:hover {
background-position: 0 -56px;
}
#footer .facebook:hover {
background-position:-233px -56px;
}
#footer .skype:hover {
background-position: -156px -56px;
}
#footer .linkedin:hover {
background-position: -78px -56px;
}
#footer .flickr:hover {
background-position: -310px -56px;
}

*{
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }
    body{
      font-family: arial, tahoma;
      font-size: 15px;
      color: #fff;
      text-transform: capitalize;
    }
    footer{
      width: auto;
      background-color: #333;
      padding: 0 160px 0 ;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
    }
    p{
      line-height: 180%;
      color: #a29e9e;
    }
    h6, div{
      margin-bottom: 20px;
    } 
    h6{
      margin-top: 25px;
      font-size: 20px;
    }
    a{
      text-decoration: none;
      color: #fff;
    }
    footer div .one{
      margin-bottom: 20px;
      text-transform: none;
    }
    footer .details{
      display: flex;
      flex-wrap: wrap;
    }
    footer .details div{
      width: 150px;
      margin-right: 20px;
    }
    footer .details div p{
      text-transform: uppercase;
    }
    footer .details div span{
      margin-bottom: 20px;
    }
    footer  .contact{
      width: 340px;
    }
    footer .information{
      margin-right: 20px;
    }
    footer .information p{
      margin-bottom: 8px;
    }
    footer .account p{
      margin-bottom: 8px;
      width: 150px;
    }
    footer .newsletter p, input{
      padding: 5px;
    }
    footer .newsletter input{
      width: 170px;
      margin-bottom: 20px;
      border-style: none;
      background-color: #4d4d4d;
      color: #a29e9e;
    }
    footer .newsletter input::placeholder{
      color: #a29e9e;
      font-size: 10px;
    }
    footer .newsletter button{
      padding: 7px 12px;
      margin-left: 4px;
      color: #fff;
      background-color: #f00;
      font-size: 10px;
      border-style: none;
    }
    footer .newsletter a{
      display: inline-block;
      width: 20px;
      height: 20px;
      margin-right: 5px;
      border-radius: 50%;
      text-align: center;
      line-height: 20px;
    }
    footer .newsletter a:first-of-type{
      background-color: #4267B2;
    }
    footer .newsletter a:nth-of-type(2){
      background-color:  #1da1f2;
    }
    footer .newsletter a:nth-of-type(3){
      background-color:  #f00;
    }
    footer .newsletter a:nth-of-type(4){
      background-color: #8a50ca;
    }
    
    footer .newsletter a:last-of-type{
      background-color: #eeaa2f;
      color: #333;
    }
    a:hover {
    color: rgba(0, 0, 0, .3); 
    transform: scale(1.3);
    transition: all .2s ease-in-out;      
    }
    /* start media footer */
    @media (max-width: 767px) {
      footer{
        padding: 15px 30px;
        justify-content: initial;
    }
      footer .information{
        width: 120px;
      }
      footer .account{
        width: 120px;
      }
    }
    /* end media footer */
    .footer-2{
      width: 100%;
      height: 45px;
      padding: 15px 180px;
      background-color: #252121;
      position: relative;
    }
    .footer-2 p{
      color: gray;
      display: inline-block;
      position: absolute;
      top: 15px;
    }
    .footer-2 p span{
      color: #fff;
    }
    .footer-2 .icons{
      float: right;
    }
    .footer-2 a{
      display: inline-block;
      margin-right: 4px;
    }
    .footer-2 a:first-of-type{
      background-color: #31abea; 
      color: #fff;
    }
    .footer-2 a:nth-of-type(2){
      background-color: #14226b; 
      color: #fff;
    }
    .footer-2 a:nth-of-type(3){
      background-color: #31abea; 
      color: #fff;
    }
    .footer-2 a:nth-of-type(4){
      background-color: orange; 
      color: #fff;
    }
    .footer-2 a:last-of-type{
      background-color: #31abea; 
      color: #fff;
    }
        /* start media footer-2 */
    @media (max-width: 767px) {
      .footer-2{
        padding: 5px 20px;
        height: 80px;
    }
    .footer-2 p{
      padding: 5px 15px;
      float: none;
      position: static;
    }
      .footer-2 .icons{
        padding: 5px 15px;
        float: none;
      }
    }
        /* end media footer-2 */

</style>
<title>Home Page</title>
</head>

<body>


 <header class="header-top">
    <div class="nav-top">
        <div class="nav-left"><img src="https://cdn-nq.logo.com.tr/assets/images/logo.png" alt="">
            <ul>
                <li>
                    <a href="" class="active">ANCHOR HOSPITALS</a>
                    <div class="link-bottom"></div>
                </li>
                <li>
                    <a href=""></a>
                </li>
                <li>
                    <a href=""></a>
                </li>
            </ul>
            
            <div class="nav-url-bottom">
                <ul>
                    <li>
                        <a href="">Home</a>
                        <a href="login.jsp">Login</a>
                        <a href="register.jsp">Signup</a>
                        <a href="appointment.jsp">Urgent Appointment</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="nav-right">
            <ul class="pull-space">
                <li><a href="#!">Blog</a></li>
                <li><a href="#!">Marketing</a></li>
                <li class="top-nav-dropdown">
                    <a href="#!"><i class="far fa-align-left"></i> Our Services</a>
                    <ul>
                        <li>
                            <a href="">
                                <div class="logo">
                                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/One-ui_logo.svg/512px-One-ui_logo.svg.png" alt="">
                                    <span>Dr.Harsha</span>
                                </div>
                                
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="logo">
                                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/One-ui_logo.svg/512px-One-ui_logo.svg.png" alt="">
                                    <span>Dr.Vardhan</span>
                                </div>
                                
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="logo">
                                    <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/One-ui_logo.svg/512px-One-ui_logo.svg.png" alt="">
                                    <span>Dr.Hrishikesh reddy</span>
                                </div>
                                
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <div class="text">
                                    <span>Facebook <u>link here</u></span>
                                </div>
                            </a>
                            <a href="">
                                <div class="text">
                                    <span>Twitter<u>link here</u></span>
                                </div>
                            </a>
                        </li>
                    </ul>
                
                </li>
                <li><a href="login.jsp">Sign in / Sign up</a></li>
            </ul>
        </div>
    </div>

</header>


<div>
    <svg width="380px" height="500px" viewBox="0 0 837 1045" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:sketch="http://www.bohemiancoding.com/sketch/ns">
    <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" sketch:type="MSPage">
        <path d="M353,9 L626.664028,170 L626.664028,487 L353,642 L79.3359724,487 L79.3359724,170 L353,9 Z" id="Polygon-1" stroke="#007FB2" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M78.5,529 L147,569.186414 L147,648.311216 L78.5,687 L10,648.311216 L10,569.186414 L78.5,529 Z" id="Polygon-2" stroke="#EF4A5B" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M773,186 L827,217.538705 L827,279.636651 L773,310 L719,279.636651 L719,217.538705 L773,186 Z" id="Polygon-3" stroke="#795D9C" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M639,529 L773,607.846761 L773,763.091627 L639,839 L505,763.091627 L505,607.846761 L639,529 Z" id="Polygon-4" stroke="#F2773F" stroke-width="6" sketch:type="MSShapeGroup"></path>
        <path d="M281,801 L383,861.025276 L383,979.21169 L281,1037 L179,979.21169 L179,861.025276 L281,801 Z" id="Polygon-5" stroke="#36B455" stroke-width="6" sketch:type="MSShapeGroup"></path>
    </g>
</svg>
<div class="message-box">
  <h2 style="color:orange;margin-left:-45px;margin-top: -60px;">Anchor Hospitals</h2>
  
</div>



</div>
<div class="row">
  <div class="column" style="margin-top: 600px;margin-left: 50px;">
    <img src="https://www.sakrapremiumclinic.com/sakraclinic-admin/assets/images/cancer-care-banner-mobile.jpg" style="width:100%">
  </div>
  <div class="column"style="margin-top: 600px;">
    <img src="https://www.sakrapremiumclinic.com/sakraclinic-admin/assets/images/cardiology-mob-banner.jpg" style="width:100%">
  </div>
  <div class="column" style= "margin-left: 50px;">
    <img src="https://www.sakrapremiumclinic.com/sakraclinic-admin/assets/images/neurosurgery-mob-banner.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="https://www.sakrapremiumclinic.com/sakraclinic-admin/assets/images/gi-Surgery-mob-banner.jpg" style="width:100%">
  </div>
  <div class="column" style= "margin-left: 50px;">
    <img src="https://www.sakrapremiumclinic.com/sakraclinic-admin/assets/images/orthopaedics-mob-banner.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="https://www.sakrapremiumclinic.com/sakraclinic-admin/assets/images/gastroenterology-mob-banner.jpg" style="width:100%">
  </div>
  <div class="column" style= "margin-left: 50px;">
    <img src="https://www.sakrapremiumclinic.com/sakraclinic-admin/assets/images/urology-mob-banner.jpg" style="width:100%">
  </div>
  <div class="column">
    <img src="https://www.sakrapremiumclinic.com/assets/images/testimonials-mobile-banner.jpg" style="width:100%">
  </div>
</div> 
    <script src="assets/js/font-pro.js"></script>

  <footer class="bg-dark">

    <div class="contact">
      <h6>contact us</h6>
      <p class="one">Hi, we are always open for cooperation and suggestions,<br> contact us in one of the ways below</p>
      <div class="details">
        <div>
          <p>phone number</p>
          <span><a href="">+1 (800)060-07-30</a></span>
        </div> 
        <div> 
          <p>email address</p>
          <span><a href=""> us@example.com</a></span>
        </div>
        <div>
          <p>our location</p>
          <span>751 Fake Street,New York<br> 10021 USA</span>
        </div> 
        <div>
          <p>working hours</p>
          <span>Mon-Sat 10.00am-7.00pm</span>
        </div> 
      </div>  
    </div>
    <div class="information">
      <h6>information</h6>
      <p>about us</p>
      <p>delivery information</p>
      <p>privacy policy</p>
      <p>brands</p>
      <p>contact us</p>
      <p>returns</p>
      <p>site map</p>
    </div>
    <div class="account">
      <h6>my account</h6>
      <p>store location</p>
      <p>order history</p>
      <p>wish list</p>
      <p>newsletter</p>
      <p>special offers</p>
      <p>gift certificates</p>
      <p>affiliate</p>
    </div>
    <div class="newsletter">
      <h6>newsletter</h6>
      <p>enter your email address below to subscribe to our newsletter<br>
      and keep up to date with our latest Techincal services</p>    
      <input type="email" name="email" placeholder="user@example.com">
      <button>Subscribe</button>
    </div>
     <section id="footer" class="py-5">
      <p>follow us on social networks:</p>
       <div class="container text-center">
         <a href="#" class="twitter"></a>
         <a href="#" class="linkedin"></a>
         <a href="#" class="facebook"></a>
         <a href="#" class="skype"></a>
         <a href="#" class="flickr"></a>
         <h6 class="m-0 mt-4 text-center text-white text-capitalize">Copyright &copy; 2020 designed by HarshaVardhan</h6>
       </div>
     </section>
   </footer>
</body>
</html>