<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.smile.model.Utente"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Le mie statistiche</title>

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

<script type="text/javascript">
	function home() {
		window.location.href = "play.jsp";
	}
</script>

<link rel="stylesheet" href="textAnimatedPlay.css" type="text/css">

<style>
body {
	display: flex;
	justify-content: center;
	text-align: center;
	background: beige;
	overflow: hidden;
}
</style>
<body>

	<h1
		style="position: relative; right: 40%; position: absolute; z-index: 1">
		<div onclick="home()" style="cursor: pointer">
			<span>S</span><span>M</span><span>I</span><span>L</span><span>E</span>
		</div>
	</h1>

<ul  class="nav nav-pills mb-3" id="pills-tab" role="tablist" style="margin-top:10%;margin-left:0%; z-index:2 ;position: absolute">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true" style="font-family:Comic Sans MS">Statistiche</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false"style="font-family:Comic Sans MS">Statistiche Avanzate</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false"style="font-family:Comic Sans MS">Suggerimenti</a>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent" style="margin-top: 15%">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab" > SCRIVERE QUA PER STATISTICHE</div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">SCRIVERE QUA PER STTISTICHE AVANZATE</div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">SCRIVERE QUA PER SUGGERIMENTI</div>
</div>

</body>

</html>