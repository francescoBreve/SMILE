<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Gioca a SMILE!</title>
<link rel="stylesheet" href="play.css" type="text/css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
	integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
	integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
	integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k"
	crossorigin="anonymous"></script>

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:300"
	type="text/css" />

<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>

</head>
<link rel="stylesheet" href="textAnimatedPlay.css" type="text/css">

<script type="text/javascript">
	function logout() {
		var confirm = window.confirm("Vuoi effettuare il logout?");
		if (confirm) {
			$.ajax({
				url : "Logout",
				method : "POST",
				success : function() {
					alert("Logout avvenuto con successo");
					window.location.href = "index.html";
				}
			});
		}
	}
	function myStats() {
		window.location.href = "StatFetcher";
	}
</script>

<style>
.bookmark {
	position: relative;
	top: 0;
	right: 20%;
	height: 6em;
	width: 5em;
	background-color: red;
	background-image: linear-gradient(hsla(0, 0%, 100%, 0),
		hsla(0, 0%, 100%, 0.5) 5px, hsla(0, 0%, 100%, 0) 25px);
	-webkit-filter: drop-shadow(0 2px 6px hsla(0, 0%, 0%, 0.75));
	box-sizing: border-box;
	padding-top: 50px;
	color: white;
	font-size: 1.5em;
	text-shadow: 0 -1px 0 hsla(0, 0%, 0%, 0.5);
}

.bookmark:before, .bookmark:after {
	content: '';
	display: block;
	position: absolute;
}

.bookmark:before {
	bottom: -50%;
	height: 100%;
	width: 100%;
	background-image: linear-gradient(-45deg, transparent 50%, red 50%),
		linear-gradient(45deg, transparent 50%, red 50%);
	z-index: -1;
}

.bookmark:after {
	height: 136.5%;
	width: 88%;
	left: 6%;
	top: 0;
	border-style: dashed;
	border-color: yellow;
	border-width: 0 1px;
	pointer-events: none;
}

.bookmark:hover {
	height: 30%;
	cursor: pointer;
}

.myButton {
	-moz-box-shadow: inset 0px 1px 0px 0px #dcecfb;
	-webkit-box-shadow: inset 0px 1px 0px 0px #dcecfb;
	box-shadow: inset 0px 1px 0px 0px #dcecfb;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #bddbfa
		), color-stop(1, #80b5ea));
	background: -moz-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: -webkit-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: -o-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: -ms-linear-gradient(top, #bddbfa 5%, #80b5ea 100%);
	background: linear-gradient(to bottom, #bddbfa 5%, #80b5ea 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#bddbfa',
		endColorstr='#80b5ea', GradientType=0);
	background-color: #bddbfa;
	-moz-border-radius: 42px;
	-webkit-border-radius: 42px;
	border-radius: 42px;
	border: 1px solid #84bbf3;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 10px 37px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #528ecc;
}

.myButton:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #80b5ea
		), color-stop(1, #bddbfa));
	background: -moz-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: -webkit-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: -o-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: -ms-linear-gradient(top, #80b5ea 5%, #bddbfa 100%);
	background: linear-gradient(to bottom, #80b5ea 5%, #bddbfa 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#80b5ea',
		endColorstr='#bddbfa', GradientType=0);
	background-color: #80b5ea;
	text-decoration: none;
	color: white;
}

.myButton:active {
	position: relative;
	top: 1px;
}

.myButton1 {
	-moz-box-shadow: inset 0px 1px 0px 0px #1564ad;
	-webkit-box-shadow: inset 0px 1px 0px 0px #1564ad;
	box-shadow: inset 0px 1px 0px 0px #1564ad;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #79bbff
		), color-stop(1, #378de5));
	background: -moz-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: -webkit-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: -o-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: -ms-linear-gradient(top, #79bbff 5%, #378de5 100%);
	background: linear-gradient(to bottom, #79bbff 5%, #378de5 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#79bbff',
		endColorstr='#378de5', GradientType=0);
	background-color: #79bbff;
	-moz-border-radius: 42px;
	-webkit-border-radius: 42px;
	border-radius: 42px;
	border: 1px solid #337bc4;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 10px 37px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #528ecc;
}

.myButton1:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #378de5
		), color-stop(1, #79bbff));
	background: -moz-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: -webkit-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: -o-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: -ms-linear-gradient(top, #378de5 5%, #79bbff 100%);
	background: linear-gradient(to bottom, #378de5 5%, #79bbff 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#378de5',
		endColorstr='#79bbff', GradientType=0);
	background-color: #378de5;
	text-decoration: none;
	color: white;
}

.myButton1:active {
	position: relative;
	top: 1px;
}

.myButton2 {
	-moz-box-shadow: inset 0px 1px 0px 0px #54a3f7;
	-webkit-box-shadow: inset 0px 1px 0px 0px #54a3f7;
	box-shadow: inset 0px 1px 0px 0px #54a3f7;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #007dc1
		), color-stop(1, #0061a7));
	background: -moz-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background: -webkit-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background: -o-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background: -ms-linear-gradient(top, #007dc1 5%, #0061a7 100%);
	background: linear-gradient(to bottom, #007dc1 5%, #0061a7 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#007dc1',
		endColorstr='#0061a7', GradientType=0);
	background-color: #007dc1;
	-moz-border-radius: 42px;
	-webkit-border-radius: 42px;
	border-radius: 42px;
	border: 1px solid #124d77;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 10px 37px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #154682;
}

.myButton2:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #0061a7
		), color-stop(1, #007dc1));
	background: -moz-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background: -webkit-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background: -o-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background: -ms-linear-gradient(top, #0061a7 5%, #007dc1 100%);
	background: linear-gradient(to bottom, #0061a7 5%, #007dc1 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#0061a7',
		endColorstr='#007dc1', GradientType=0);
	background-color: #0061a7;
	text-decoration: none;
	color: white;
}

.myButton2:active {
	position: relative;
	top: 1px;
}
</style>

<%
	String nomeUtente = "" + session.getAttribute("username");
%>
<body>
	<div style="left: 40%" class="bookmark" onclick="myStats()">
		<p style="position: relative; font-family:Comic Sans MS;">Le mie statistiche</p>
	</div>
	<a class="btn btn-info" onclick="logout()"
		style="position: absolute; top: 8px; left: 16px; font-size: 18px
		    outline: none;
 cursor: pointer;
 text-align: center;
 text-decoration: none;
 font: bold 18px Arial, Helvetica, sans-serif;
 color: #fff;
 padding: 20px 20px;
 border: solid 1px #0076a3;
 background: #0095cd;
font-family:Comic Sans MS;
		;">
		Disconnettiti</a>


	<h1>
		<span>S</span><span>M</span><span>I</span><span>L</span><span>E</span>
	</h1>

	<div>

		<form class="container">
			<input type="radio" name="title" id="book1" /> <input type="radio"
				name="title" id="book2" /> <input type="radio" name="title"
				id="book3" /> <input type="radio" name="title" id="book4" /> <input
				type="radio" name="title" id="book5" /> <input type="radio"
				name="title" id="book6" /> <input type="radio" name="title"
				id="book7" /> <input type="radio" name="title" id="book8" /> <input
				type="radio" name="title" id="book9" /> <input type="radio"
				name="title" id="book10" /> <input type="radio" name="title"
				id="book11" />
			<div class="surface">
				<div class="block b1">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front"></div>
						<div class="left"></div>
						<div class="right"></div>
						<div class="top"></div>
					</div>
				</div>
				<div class="block b2">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front"></div>
						<div class="left"></div>
						<div class="right"></div>
						<div class="top"></div>
					</div>
				</div>
				<div class="block b3">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front"></div>
						<div class="left"></div>
						<div class="right"></div>
						<div class="top"></div>
					</div>
				</div>
				<div class="block b4">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front"></div>
						<div class="left"></div>
						<div class="right"></div>
						<div class="top"></div>
					</div>
				</div>
				<div class="block b5">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front"></div>
						<div class="left"></div>
						<div class="right"></div>
						<div class="top"></div>
					</div>
				</div>
				<label class="block b6" for="book1">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">

							<div class="spine">Modulo di Matematica</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Matematica">
							<div class="cover"></div>
							<div class="contents">
								<p>Esercizi di Matematica</p>
								<a href="#" class="myButton">Facile</a> <a href="#"
									class="myButton1">Medio</a> <a href="#" class="myButton2">Difficile</a>

							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b7" for="book2">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Modulo della lingua Italiana</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Italiano">
							<div class="cover"></div>
							<div class="contents">
								<p>Esercizi della lingua italiana</p>
								<a href="#" class="myButton">Facile</a> <a href="#"
									class="myButton1">Medio</a> <a href="#" class="myButton2">Difficile</a>

							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b8" for="book3">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Modulo di logica</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Logica">
							<div class="cover"></div>
							<div class="contents">
								<p>Esercizi di logica</p>
								<a href="#" class="myButton">Facile</a> <a href="#"
									class="myButton1">Medio</a> <a href="#" class="myButton2">Difficile</a>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b9" for="book4">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Modulo della lingua inglese</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Modulo dell lingua Inglese">
							<div class="cover"></div>
							<div class="contents">
								<p>English test</p>
								<a href="#" class="myButton">Facile</a> <a href="#"
									class="myButton1">Medio</a> <a href="#" class="myButton2">Difficile</a>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b10" for="book5">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Work in progress</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Work in progress">
							<div class="cover"></div>
							<div class="contents">
								<p>Ci stiamo lavorando...</p>

							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b11" for="book6">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Work in progress</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Work in progess">
							<div class="cover"></div>
							<div class="contents">
								<h1></h1>
								<p>Ci stiamo lavorando.</p>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b12" for="book7">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Work in progress</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Work in progess">
							<div class="cover"></div>
							<div class="contents">

								<p>Ci stiamo lavorando.</p>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b13" for="book8">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Work in progress</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Work in progress">
							<div class="cover"></div>
							<div class="contents">

								<p>Ci stiamo lavorando.</p>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b14" for="book9">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Work in progress</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Work in progress">
							<div class="cover"></div>
							<div class="contents">

								<p>Ci stiamo lavorando.</p>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b15" for="book10">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Work in progress</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Work in progress">
							<div class="cover"></div>
							<div class="contents">

								<p>Ci stiamo lavorando.</p>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b16" for="book11">
					<div class="block-inner">
						<div class="back"></div>
						<div class="bottom"></div>
						<div class="front">
							<div class="spine">Work in progress</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Work in progress">
							<div class="cover"></div>
							<div class="contents">

								<p>Ci stiamo lavorando.</p>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label>
			</div>
			<br> <input type="reset" value="Chiudi"
				style="background-color: #87cefa; cursor: pointer;" />
		</form>

	</div>
</body>
</body>
</html>