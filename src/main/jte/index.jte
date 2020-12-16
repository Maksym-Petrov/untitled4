<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Universal Bank</title>
    <link rel="stylesheet" href="C:\Users\lucky\Desktop\www\main.css">
</head>
<body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Satisfy&display=swap');

* {
    margin: 0;
    padding: 0;
    outline: none;
}
body , html {
    width: 100%;
    height: 100%;
}

body {
    background-color: rgb(207,199,199);
    font-family: Trebuchet MS,  Helvetica;
}

header {
   width: 100%;
   padding: 10px 0.5% 0px 0.5%;
   background: transparent;
   float: left;
   position: fixed;
}
header #logo {
    color: whitesmoke;
    cursor: pointer;

}
header #logo span {
    font-size: 1.7em;
    line-height: 45px ;
    margin-left: 40px;
   font-family: 'Satisfy', cursive;
}
@media (min-width: 701px) {
    #logo {
        float: left;
        width: 30%;
        font-size: 1.1em;
    }
    #about {
        float: right;
        width: 67%;
    }
}
#about{
    text-align: center;
    font-size: 1em;
    line-height: 40px;
    margin-bottom: 10px;
}
#about> a {color: whitesmoke;}
#about > a:hover {
    color: #b0b0b0;
    text-decoration: underline;

}
#about > a:not(:last-child){
    margin-right: 7%;
}
.fixed{
    z-index: 5000;
    background-color: whitesmoke;
    border-bottom: 1px, solid #c0c0c0;
}
header.fixed #logo{
    color: #343434;
}
.fixed #about a {color: #343434;}
.fixed #about a:hover {color: #7c7c7c;}

#top {
    width: 100%;

    background-image: url(http://www.cita.com.ua/img/ntours/big/4/2010721678.jpg);
    background-blend-mode: multiply;
    background-color: #2e3a44;
    background-size: cover;
    text-align: center;
    color: #fff;

}
@media (min-width: 1001px) {
#top {
font-size: 3em;
 height: 1000px;
}
}
@media (max-width: 1000px)and (min-width: 651px){
#top {
font-size: 2em;
 height: 600px;
}
}
@media (max-width: 650px){
#top {
font-size: 1.3em;
padding-top: 50%;
 height: 500px;
}

}

#top h1 {
    padding-top: 20%;
}
#top h3 {
    color: #c1bcbc;

}
#main{
padding: 100px 20%;
width:60;
float: left;
background-color: #f6f6f6;
border-top: 2px solid silver;
color: #484848;
font-size:1.3em;
}
@media(min-width:1401px){
#main{
padding: 100px 20%;
width:60%;
}
}
@media(max-width:1400px){
#main{
padding: 100px 10%;
width:80%;
}
}
@media(max-width:700px){
#main div{
width: 98%!important;
}
}
#main div {
width: 48%;
margin-right:2%;
float: left;
}
#main h2 {font-size: 3em}
#main h2 {color: #a0a0a0}

#overview{
float: left;
background-image: url("https://assets.wam.ae/uploads/2019/07/994351622154327255.jpg");
background-blend-mode: multiply;
background-color:#4f1c75 ;
background-size: cover;
background-attachment: fixed;

padding: 100px 0;
width: 100%;
text-align: center;
color: #f6f6f6;
}
#overview h2 {font-size: 4em}
#overview h4 {color: #ccc; font-size: 1.5em}
#overview .img {
    float: left;
    width: 30%;
    margin-right: 5%;
    margin-top: 50px;

}
#overview .img:nth-child(odd){
margin-left: 20%;
}
#overview img{
background: #fafafa;
padding: 5px;
border: 2px solid silver;
float: left;
width: 100%;
max-width: 500px;
}
#overview span {
float: left;
width: 100%;
font-size: 2em;
margin-top: 10px;
}
@media (max-width:700px) {
#overview .img {
width: 80%!important;
margin-right: 0!important;
margin-left: 10%!important;
}

}

@media (max-width: 700px) {
    #logo {
        margin-top: 15px ;
        width: 100%;
        font-size: 1.5em;
    } #about{
       float: left;
       width: 100%;
    }
}
#contacts {
width: 100%;
float:left;
padding-bottom: 40px;
padding-top: 70px;
border-top: 4px solid #f8f4f4;
background: #272d45;
}
h1, h2, h3, h4, h5 {
font-family: 'Satisfy', cursive;
font-weight: lighter;
}

#contacts h5 {font-size: 3em; color: silver}
#form_input{
margin-top: 15px;
width: 35%;
margin-left: 38%;
font-size: 1.1em;
}
#form_input label {
color: #c6c0c0;
cursor: pointer;
font-size: 1.4em;
font-family: 'Satisfy', cursive;
}
#form_input label> span {
color: #e87e7e;
}
#form_input input,#form_input textarea {
margin-bottom: 10px;
width: 70%;
padding: 10px 2%;
border-radius: 7px;
border: 2px solid silver;
font-size: 0.9em;
color: #4a4a4a;
}
#form_input input,#form_input textarea:focus {
border-color: #333;
}
.btn{
float: left;
border-radius: 5px;
padding: 5px 9px;
font-size: 1.2em;
background-color: #ec6550;
text-shadow:#454545 0 0 2px;
cursor: pointer;
color: #f6f6f6;
font-family: 'Satisfy', cursive;
}
.btn:hover {
background-color: #c15443;
}
</style>
    <header>
        <div id="logo" onclick="slowScroll('#top')">
            <span>Universal Bank</span>
        </div>
        <div id="about">
            <a href="#" title="Возможности" onclick="slowScroll('#main')">Возможности</a>
            <a href="#" onclick="slowScroll('#overiwe')"title="Преимущества">Преимущества</a>
            <a href="#"  onclick="slowScroll('#contacts')"title="Контакты">Контакты</a>
           <a href="/registration" onclick="slowScroll('#Регистрация')"title="Регистрация"> Регистрация</a>
           <a href="/login" onclick="slowScroll('#Авторизация')"title="Авторизация"> Авторизация</a>
        </div>
        
    </header>
    <div id="top">
        <h1>Ваш банк</h1>
        <h3>Всегда с вами!</h3>
    </div>
      <div id="main">
          <div class="intro">
          <h2>Всё для клиента !</h2>
          <span>Наши технологии помогут вам быстро и комфортно пользоваться услугами банка</span>
          </div>
              <div class="text">

                  <span>Бесконтактные оплаты смартфоном
                    Оплачивайте покупки, услуги или проезд бесконтактно с Google Pay, Apple Pay и мобильным кошельком Банка Восток.
                      Просто поднесите смартфон или smart-часы к терминалу.
                    Все карты есть в Вашем устройстве, оплата происходит мгновенно.</span>
              </div>
      </div>
         <div id="overview">
             <h2>Преймущества</h2>
             <h4>С нами проще</h4>
             <div class="img">
             <img src="https://image.freepik.com/free-vector/contactless-payment-with-smartphone-and-terminal_128452-23.jpg" alt="" >
             <span>Оплачивайте телефоном</span>
             </div>
             <div class="img">
                 <img src="https://img.freepik.com/free-vector/contactless-payment-male-hand-holding-credit-card-illustration-of-wireless-mobile-payment-by-credit-card_143407-800.jpg?size=338&ext=jpg" alt="">
                 <span>Оплачивайте картой</span>
             </div>
             <div class="img">
                 <img src="https://newstes.ru/uploads/posts/2018-11/1542536707_2.jpg"alt="">
                 <span>Оформление карты</span>
             </div>
             <div class="img">
                 <img src="https://lk.megafon.ru/static/media/social_networks/social_img.jpg"alt="">
                 <span>Личный кабинет</span>
             </div>
         </div>
         <div id="contacts">
        <center><h5>Обратная связь</h5></center>
         <form id="form_input" >
         <label for="name">Имя <span>*</span></label><br>
         <input type="text" placeholder="Введите имя" name="name" id="name" ><br>
         <label for="gmail">Ваша почта<span>*</span></label><br>
         <input type="gmail" placeholder="Введите gmail" name="gmail" id="gmail"><br>
         <label for="message">Сообщение<span>*</span></label><br>
         <textarea placeholder="Введите ваше сообщение" name="message" id = "message"></textarea><br>
         <div id="mess_send" class="btn">Отправить</div>
</form>
</div>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script>
         function slowScroll (id) {
             $('html, body').animate({
             scrollTop: $(id).offset().top
             },500);
         }
         $(document).on("scroll", function(){
             if($(window).scrollTop()===0)
             $("header").removeClass("fixed");
             else
             $("header").attr("class", "fixed");
         })
     </script>
</body>
</html>