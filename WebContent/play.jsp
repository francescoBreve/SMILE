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
	
	function logout(){
		var confirm = window.confirm("Vuoi effettuare il logout?");
		if(confirm){	
				$.ajax({
					url: "Logout",
					method: "POST",
					success: function(){
						alert("Logout avvenuto con successo");
						window.location.href = "index.html";
					}
				});
			}
		}
		
	
</script>

<style>
.bookmark {
	position: relative;
	height: 150px;
	width: 104px;
	padding: 0px;
	-webkit-transform: rotate(0deg) skew(0deg);
	transform: rotate(0deg) skew(0deg);
	border-left: 52px solid red;
	border-right: 52px solid red;
	border-bottom: 40px solid transparent;
}

.bookmark:hover {
	height: 170px;
}
</style>
<% String nomeUtente = "" + session.getAttribute("username"); %>
<body>
	<div style="left: 40%" class="bookmark">
		<p style="right: 40px; position: relative;">Le mie statistiche</p>
	</div>
	<a class="btn btn-info" onclick="logout()"
		style="position: absolute; top: 8px; left: 16px; font-size: 18px;">
		Log out <%= nomeUtente %></a>
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

							<div class="spine">Statistiche</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Statistiche">
							<div class="cover"></div>
							<div class="contents">
								<p>
									Statistiche <small> </small>
							</div>
						</div>
						<div class="top"></div>
					</div>
				</label> <label class="block b7" for="book2">
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
				</label> <label class="block b8" for="book3">
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
								<p>Esercizi della Lingua Italiana</p>
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
							<div class="spine">Modulo di Logica</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="Esercizi di Logica">
							<div class="cover"></div>
							<div class="contents">
								<p>Logica</p>
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
							<div class="spine">English Test</div>
						</div>
						<div class="left"></div>
						<div class="right" data-title="English">
							<div class="cover"></div>
							<div class="contents">
								<p>English Test</p>
								<a href="#" class="myButton">Facile</a> <a href="#"
									class="myButton1">Medio</a> <a href="#" class="myButton2">Difficile</a>
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
			<br> <input type="reset" value="Chiudi" />
		</form>

	</div>
</body>
</body>
</html>