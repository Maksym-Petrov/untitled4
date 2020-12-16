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
@import url('https://fonts.googleapis.com/css2?family=Castoro:ital@1&display=swap');

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
    background-color: rgb(241, 54, 54);
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
    font-family: 'Castoro', serif ;
}
@media (min-width: 701px) {
    #logo {
        float: left;
        width: 30%;
        font-size: 1.1em;
    }
    #about {
        float: left;
        width: 100%;
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
    margin-right: 5%;
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
.fixed #about a {color: #7c7c7c;}

#top {
    width: 100%;
    height: 1000px;
    background-image: url(http://www.cita.com.ua/img/ntours/big/4/2010721678.jpg);
    background-blend-mode: multiply;
    background-color: #2e3a44;
    background-size: cover;
    text-align: center;
    color: #fff;
    font-size: 3em;
}
#top h1 {
    padding-top: 20%;
}
#top h3 {
    color: #ccc;

}

@media (max-width: 700px) {
    #logo {
        margin-top: 15px ;
        width: 100%;
        font-size: 1.5em;
    }
}

</style>
    <header>
        <div id="logo" onclick="slowScroll('#top')">
            <span>Universal Bank</span>
        </div>

    </header>
    <div id="top">

		<h1>Регистрация</h1>
		<form method="post" action="/api/reg/">
		<div class="input-form ">

			<input type="text"size="58" name="login" placeholder="Логин">
		 </div>
		 <div class="input-form">
		 	<p><input type="password" size="58" name="pass"placeholder="Пароль" size="18" /></p>
		  </div>

 		<input type="password"size="58"name="repass"placeholder ="Повторить пароль">

 		 <input type="submit" value="Войти" />
 		</form>
    </div>

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
     <script>
         function slowScroll (id) {
             $('body').animate({
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