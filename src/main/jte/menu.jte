@param  App.User user

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Главная страница</title>
<body>
<style>
   body {
    background: #c7b39b url(http://www.cita.com.ua/img/ntours/big/4/2010721678.jpg);
    color: #fff;
    moz-background-size: 100%;
    -webkit-background-size: 100%;
    -o-background-size: 100%;
    background-size: 100%;
   }
.top-menu {
  position: relative;
  background: rgba(34,34,34,.2);
}

h5  {

     font-size: 1.83em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 270px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h2  {
     font-size: 2.83em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 270px;
    margin-inline-end: 0px;
    font-weight: bold;
}
h4  {

     font-size: 2.83em;
    margin-block-start: 0.67em;
    margin-block-end: 0.67em;
    margin-inline-start: 270px;
    margin-inline-end: 0px;
    font-weight: bold;
}
.menu-main {
  list-style: none;
  margin: 0;
  padding: 10;
}
.menu-main:after {
  content: "";
  display: table;
  clear: both;
}
.left-item {float: left;}
.right-item {float: right;}
.navbar-logo {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%,-50%);
}
.menu-main a {

  text-decoration: none;
  display: block;
  line-height: 82px;
  padding: 0 10px;
  font-size: 18px;
  letter-spacing: 6px;
  font-family: 'Arimo', sans-serif;
  font-weight: bold;
    color: white;

  transition: .3s linear;
}
.menu-main a:hover {background: rgba(0,0,0,.3);}
@media (max-width: 830px) {
.menu-main {
  padding-top: 90px;
  text-align: center;
}
.navbar-logo {
  position:absolute;
  left: 100%;
  top: 10px;
  transform: translateX(-50%);
}
.menu-main li {
  float: none;
  display: inline-block;
}
.menu-main a {
  line-height: normal;
  padding: 20px 15px;
  font-size: 16px;
}
}
@media (max-width: 630px) {
.menu-main li {display: block;}
}
   .category-wrap {
  padding: 55px;
    background: rgba(34,34,34,.2);
  width: 200px;
  box-shadow: 2px 2px 8px rgba(0,0,0,.1);
  font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
.category-wrap h3 {
  font-size: 26px;
  color: rgba(0,0,0,.6);
  margin: 0 0 50px;
  padding: 0 5px;
  position: relative;
}
.category-wrap h3:after {
  content: "";
  width: 6px;
  height: 6px;
  background: #80C8A0;
  position: absolute;
  right: 5px;
  bottom: 2px;
  box-shadow: -8px -8px #80C8A0, 0 -8px #80C8A0, -8px 0 #80C8A0;
}
.category-wrap ul {
  list-style: none;
  margin: 0;
  padding: 0;
  border-top: 1px solid rgba(0,0,0,0.3);
}
.category-wrap li {margin: 54px 0 0 10px;}
.category-wrap a {
  text-decoration: none;
  display: block;
  font-size: 18px;
  color: rgba(0,0,0,.6);
  padding: 2px;
  position: relative;
  transition: .3s linear;
}
.category-wrap a:after {
  content:"\f18e";
  font-family: FontAwesome;
  position: absolute;
  right: 5px;
  color: white;
  transition: .2s linear;
}
.category-wrap a:hover {
  background: #6d6b6b;
  color: white;
}

   #footer {
    position: fixed;
    bottom: 0;
    padding: 10px;
    background: #39b54a;

    color: #fff;
    width: 100%;


  </style>

<div class="category-wrap">
    <h3>Меню сайта</h3>
    <h5>ID:${user.getId()}</h5>
      <h2>Имя:</h2>
      <h4>Баланс:${user.getBalance()}</h4>

    <ul>
        <li><a href="">Главная страница</a></li>
        <li><a href="">Мои счета</a></li>
        <li><a href="">Моя информация</a></li>
        <li><a href="">Настройки</a></li>
        <li><a href="">Выход</a></li>

    </ul>

</div>
<div id="top">

    <h1>Перевод</h1>
    <form method="post" action="/api/transfer/">
    <div class="input-form ">
         <label for="login">ID Пользователя </label><br>
        <input  type="text"  placeholder="Введите id" name="id" id="id" size="48" ><br>
        <label for="password">Сумма перевода </label><br>
         <p><input name="sum" type="sum" placeholder="Введите сумму" name="sum" id="sum"size="48"> </p>
        <input type="submit" value="Отправить" />
    </div>
 </form>
</div>

</body></head>

</html>