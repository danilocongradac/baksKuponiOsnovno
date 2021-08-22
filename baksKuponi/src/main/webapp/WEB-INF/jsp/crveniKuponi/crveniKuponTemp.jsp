<!DOCTYPE html>
<html>
<head>
	<title>Kupon ${naslov}</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	<!-- Used for carousel bootstrap-->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>



<!-- 
	BOJE: 

	#b9e2f0 - bebi plava
	#e7f3f3 - svetlo svetlo plava

	#fbfbfb - bela
	#b7362c - crvena
	#7c221c - tamno crvena
	#161f28 - crna - iskorisceni kuponi
	#262626 - nova crna
-->


<body>
	<style>
		@import url('https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap');
		
		body{
			color: #fbfbfb;
			font-family: 'Dancing Script', cursive;
			height: 100%;
			display: flex;
			justify-content: center;
			align-items: center;
			background-color: #262626;
		}

		.naslov{
			background-image: url("https://webstockreview.net/images/clipart-banner-heart-11.png");
	    	background-color: white;
	    	padding-top: 15vh;
		    text-align: center;
		    background-size: contain;
		    background-repeat-y: no-repeat;
		    background-position: inherit;
		    width: 100vw;
		}

		.strana{
			height: 100vh;
			margin: 0px;
			padding: 0px;
			width: 100vw;	
		}
		
		.main-nav {
		    position: absolute;
		    top: 0;
		    right: 0;
		    left: 0;
		    bottom: 0;
		    text-align: center;
		    background: #262626;
		    opacity: 0;
		    z-index: -1;
		    visibility: hidden;
		    transition: all .375s;
		}

.main-nav.is-open {
    opacity: 1;
    z-index: 100;
    visibility: visible;
}

/* Yellow band effect */
.main-nav::before {
	content: '';
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: -15px;
    background: #7c221c;
    transform-origin: 0 0;
    transform: skew(-14deg) translateX(-120%);
    transition: all .275s .1s;
}

.main-nav.is-open::before {
    transform: skew(-14deg) translateX(0);
}

/* Skewing effect on menu links */
.main-nav ul {
    display: inline-flex;
    flex-direction: column;
    height: 93%; /* Should be 100%, but we have a notice message :D */
    align-items: flex-end;
    justify-content: center;
    transform: translateX(-18%) skew(-16deg);
}

.main-nav li {
    display: block;
    margin: .5rem 0;
    text-align: right;
    transform: skew(16deg);
}

/* Apparition effect on links */
.main-nav a {
    opacity: 0;
    transform: translateY(-10px);
}

.main-nav.is-open a {
    opacity: 1;
    transform: translateY(0);
}
.main-nav li:nth-child(1) a {
	transition: all 275ms 175ms
}
.main-nav li:nth-child(2) a {
	transition: all 275ms 225ms
}
.main-nav li:nth-child(3) a {
	transition: all 275ms 275ms
}
.main-nav li:nth-child(4) a {
	transition: all 275ms 325ms
}
.main-nav li:nth-child(5) a {
	transition: all 275ms 375ms
}


/* Decoration */
.main-nav ul,
.main-nav li {
	list-style: none;
	padding: 0;
}
.main-nav a {
	display: block;
	padding: 12px 0;
	color: #fbfbfb;	
	font-size: 1.4em;
	text-decoration: none;
	font-weight: bold;
}

/* Burger Style: @see: https://codepen.io/CreativeJuiz/full/oMZNXy */
.open-main-nav {
	position: absolute;
	top: 10vh;
	padding-top: 2vh;
	right: 3vw;
	z-index: 1000;
	background: none;
	border: 0;
	cursor: pointer;
}
.open-main-nav:focus {
	outline: none;
}
.burger {
	position: relative;
	display: block;
	width: 28px;
	height: 4px;
	margin: 0 auto;
	background: #fbfbfb;
	transform: skew(5deg);
	transition: all .275s;
}

.burger:after,
.burger:before {
	content: '';
	display: block;
	height: 100%;
	background: #fbfbfb;
	transition: all .275s;
}

.burger:after {
	transform: translateY(-12px) translateX(-2px) skew(-20deg);
}

.burger:before {
	transform: translateY(-16px) skew(-10deg);
}

/* Toggle State part */
.is-open .burger {
	transform: skew(5deg) translateY(-8px) rotate(-45deg);
}

.is-open .burger:before {
	transform: translateY(0px) skew(-10deg) rotate(75deg);
}

.is-open .burger:after {
	transform: translateY(-12px) translateX(10px) skew(-20deg);
    opacity: 0;
}

/* MENU Text part */

.burger-text {
	display: block;
	font-size: .675rem;
	letter-spacing: .05em;
	margin-top: .5em;
	text-transform: uppercase;
	font-weight: 500;
	text-align: center;
	color: #fbfbfb;
}

.container {
	margin: 0px;
	padding: 0px;
	left: 0px;
	width: 100vw;
	
}

.card{
	height: 90%;
	width: 45vw;
	background-color: #b7362c;
	color: #fbfbfb;
}

.kupon{
	height: 20vh;
}
/* Slow motion button */
[id="slowmo"] {
	position: absolute;
	top: 20px;
	right: 20px;
	padding: 10px;
	border: 0;
	font-size: 1rem;
	background: #FEDC2A;
	color: #fbfbfb;
	font-weight: bold;
	cursor: pointer;
	transition: all .275s;
}

[id="slowmo"] span {
	display: block;
	font-weight: normal;
}

[id="slowmo"]:hover,
[id="slowmo"]:focus {
	background: #fbfbfb;
	color: #FEDC2A;
}

[id="slowmo"].is-slowmo span:after {
	content: 'Activated';
	display: block;
	font-weight: bold;
}

/* When slowmotion is activated */

.is-slowmo + .device .open-main-nav .burger,
.is-slowmo + .device .open-main-nav .burger:before,
.is-slowmo + .device .open-main-nav .burger:after,
.is-slowmo + .device .main-nav,
.is-slowmo + .device .main-nav::before,
.is-slowmo + .device .main-nav a {
	transition-duration: 3s;
}
.is-slowmo + .device .main-nav li:nth-child(1) a {
	transition-delay: 1750ms
}
.is-slowmo + .device .main-nav li:nth-child(2) a {
	transition-delay: 2250ms
}
.is-slowmo + .device .main-nav li:nth-child(3) a {
	transition-delay: 2750ms
}
.is-slowmo + .device .main-nav li:nth-child(4) a {
	transition-delay: 3250ms
}
.is-slowmo + .device .main-nav li:nth-child(5) a {
	transition-delay: 3750ms
}

/* Notice */	
.notice {
	position: absolute;
	bottom: -15px;
	left: 0; right: 0;
	padding: 20px;
	background: #F2F2F2;
	color: #fbfbfb;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.5;
	z-index: 100;
	text-align: center;
}
.notice strong {
	font-weight: 700;
}
.notice a {
	padding: 2px 3px;
	background: #FEDC2A;
	text-decoration: none;
}

	@media (min-width: 0px){
		.menuBurger{
			transform: scale(1.1);
			margin-top: 5vw;
		}
	}

	@media (min-width: 1500px){
		.menuBurger{
			margin-top: 10vw;
			transform: scale(2.5);
		}
	}

	@media (min-width: 1000px){
		.menuBurger{
			margin-top: 10vw;
			transform: scale(2);
		}
	}

	@media (min-width: 600px){
		.naslov{

			background-position-y: -10vw
		}

		.naslovText{
			position: relative;
			margin-top: 10vw;
		}

		.menuBurger{
			margin-top: 10vw;
			transform: scale(1.5);
		}

	}

	.card-deck{
		width: 100vw;
	}
	.kupon{
		margin: 0px;
		width: 50%;

	}

	::-webkit-scrollbar {
	  display: none;
	}

	/* Hide scrollbar for IE, Edge and Firefox */
	body{
	  -ms-overflow-style: none;  /* IE and Edge */
	  scrollbar-width: none;  /* Firefox */
	}


	.card-title{
		font-size: 5vw;
		color: #fbfbfb;
	}
	.card-text{
		font-size: 4vw;
		color: #fbfbfb;
	}
	.text-muted-super{
		font-size: 3vw;
		color: #fafafa;
	}


	@media (max-width: 560px){
		.big{
			height: 25vh;
		}
		.medium{
			height: 20vh;
		}

	}
	@media(min-width: 560px){
		.big{
			height: 40vw;
		}

		.medium{
			height: 30vw;
		}
	}
	@media (min-width: 1024px){
		.big{
			height: 40vw;
			/** 
			25vh
			**/
			}

		.medium{
			height: 25vw;
		}
	}
	</style>
	<div class="strana">
		<div class="container">
			<button id="burger" class="open-main-nav menuBurger" style="">
				<span class="burger"></span>
				<span class="burger-text">Menu</span>
			</button>
			<nav class="main-nav" id="main-nav">
				<ul style="font-size: 250%">
					<li>
						<a href="/baksbaks/home">Pocetna</a>
					</li>
					<li>
						<a href="/baksbaks/sviKuponi">Svi Kuponi</a>
					</li>
					<li>
						<a href="/baksbaks/uslovi">Uslovi</a>
					</li>
					<sec:authorize access="hasAnyRole('USER')">
								<li>
									<a href="/baksbaks/crveni/sviKuponi" style="font-size: inherit;">Crveni Kuponi</a>	
								</li>
								<li>
									<a href="<c:url value="/logout" />" style="font-size: inherit;">Izloguj se</a>	
								</li>
					</sec:authorize>
					<sec:authorize access="hasAnyRole('ADMIN')">
								<li>
									<a href="/baksbaks/crveni/sviKuponi" style="font-size: inherit;">Crveni Kuponi</a>	
								</li>
								<li>
									<a href="<c:url value="/logout" />" style="font-size: inherit;">Izloguj se</a>	
								</li>
								<li>
									<a href="/baksbaks/menjanjeKupona" style="font-size: inherit;"> Menjaj Kupone</a>
								</li>
					</sec:authorize>
					<sec:authorize access="!hasAnyRole('USER','ADMIN')">
								<li>
									<a href="/login">Uloguj se</a>
								</li>
					</sec:authorize>
				</ul>
				</ul>
			</nav>
	  		<div class="jumbotron naslov" style="background-color: #262626; background-position: inherit;"> 			
				<h1 class="naslovText" style="text-align: center;">
					Ovaj kupon ti daje pravo na 
				</h1>
			</div>

			<h2 style=" width: 100vw; text-align: center;">
				${naslov}
			</h2>
			<h3 style="width: 100vw; text-align: center; margin-top: 5vh; margin-bottom: 5vh;">
				${opis}
			</h3>
			<div style="width: 100vw; display: flex; justify-content: center;">
				<a href="iskoristiKupon?id=${id}"><button class="btn btn-primary" style="font-size: 3vh;">Iskoristi Kupon</button></a>
			</div>
		</div>
	</div>
<script type="text/javascript">
	let burger = document.getElementById('burger'),
	 nav    = document.getElementById('main-nav'),
	 slowmo = document.getElementById('slowmo');

	burger.addEventListener('click', function(e){
		this.classList.toggle('is-open');
		nav.classList.toggle('is-open');
	});

	slowmo.addEventListener('click', function(e){
		this.classList.toggle('is-slowmo');
	});

	/* Onload demo - dirty timeout */
	let clickEvent = new Event('click');

	window.addEventListener('load', function(e) {
		slowmo.dispatchEvent(clickEvent);
		burger.dispatchEvent(clickEvent);
		
		setTimeout(function(){
			burger.dispatchEvent(clickEvent);
			
			setTimeout(function(){
				slowmo.dispatchEvent(clickEvent);
			}, 3500);
		}, 5500);
	});
</script>

</body>
</html>