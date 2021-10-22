
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <title>HBD</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://apis.google.com/js/platform.js" async defer></script>
  <meta name="google-signin-client_id" content="176136668055-rt9e4p6tmbfhug453p5obf50f1iedqin.apps.googleusercontent.com">
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/images/icon.png" type="image/x-icon">
  <link rel="icon" href="myicon.ico" type="image/x-icon">
  <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
 
 <style>
	:focus {
	  outline: none;
	}
	h1 h2 h3 h4 h5 h6 {
	  font-size: inherit;
	  font-weight: normal;
	}
	ul {
	  list-style: none;
	}
	a {
	  color: inherit;
	  text-decoration: inherit;
	}
	img {
	  display: block;
	}
	html body {
	  height: 100vh;
	  font-size: 18px;
	  font-family: Helvetica, Arial, sans-serif;
	}
	/* *** End of Global *** */
	body {
	  background: radial-gradient(circle, #E8E2AE,#FFFFB4 0%);
	  display: flex;
	  justify-content: center;
	  align-items: center;
	}
	
	.inline-block {
	    display: inline-block
	}
	
	.act-table {
	    display: table
	}
	
	.act-table-cell {
	    display: table-cell
	}
	
	header a,header a:hover,header a:focus,header a:active {
	    text-decoration: none;
	    color: inherit
	}
	
	header {
	    position: fixed;
	    top: 8px;
	    left: 0;
	    right: 0;
	    z-index: 100;
	    transition: 1s;
	    -webkit-transition: 1s;
	    -moz-transition: 1s
	}
	
	header.go-out {
	    top: -150px
	}
	
	header ul {
	    list-style: none;
	    padding: 0;
	    margin: 0;
	}
	
	header li {
	    list-style: none
	}
	
	header nav ul {
	    background-color: rgba(255, 255, 255, 0.6);
	    overflow: hidden;
	    border-radius: 5px;
	    -webkit-border-radius: 5px;
	    -moz-border-radius: 5px
	}
	
	header nav ul li {
	    color: 363636;
	}
	
	header nav ul li a {
	    width: 100px;
	    max-width: 150px;
	    height: 45px;
	    display: block;
	    padding-top: 13px
	}
	
	header nav ul li.active a,
	header nav ul li.active a:hover {
	    background-color: rgba(255, 255, 255, 0.6)
	}
	
	header nav ul li:hover a {
	    background-color: #BCE067; 
	}
	.face {
	    display: block;
	    position: absolute;
	    top: 0;
	    bottom: 0;
	    left: 0;
	    right: 0;
	    width: 100%;
	    height: 100%;
	    color: #666;
	    font-size: 18px;
	    text-align: center;
	    box-shadow: inset 0 0 4px rgba(0, 0, 0, 0.5);
	    -webkit-box-shadow: inset 0 0 4px rgba(0, 0, 0, 0.5);
	    -moz-box-shadow: inset 0 0 4px rgba(0, 0, 0, 0.5)
	}
	.space {
		 margin-left: 20px;
	}
	 .headhbd {
		 font-family: Helvetica Neue, Helvetica, sans-serif;
		 justify-content: center;
		 align-items: center;
		 width: 100%;
		 font-size: 60px;
		 text-align: center;
	}
	 .headhbd span{
	 	display: inline-block;
	}
	 .letter:nth-child(1) {
		 animation: spinner 1s infinite ease-in-out;
	}
	 .letter:nth-child(2) {
		 animation: spinner 2s infinite ease-in-out;
	}
	 .letter:nth-child(3) {
		 animation: spinner 3s infinite ease-in-out;
	}
	 .letter:nth-child(4) {
		 animation: spinner 4s infinite ease-in-out;
	}
	 .letter:nth-child(5) {
		 animation: spinner 5s infinite ease-in-out;
	}
	 .letter:nth-child(6) {
		 animation: spinner 6s infinite ease-in-out;
	}
	 .letter:nth-child(7) {
		 animation: spinner 7s infinite ease-in-out;
	}
	 .letter:nth-child(8) {
		 animation: spinner 8s infinite ease-in-out;
	}
	 .letter:nth-child(9) {
		 animation: spinner 9s infinite ease-in-out;
	}
	 .letter:nth-child(10) {
		 animation: spinner 10s infinite ease-in-out;
	}
	 .letter:nth-child(11) {
		 animation: spinner 11s infinite ease-in-out;
	}
	 .letter:nth-child(12) {
		 animation: spinner 12s infinite ease-in-out;
	}
	 .letter:nth-child(13) {
		 animation: spinner 13s infinite ease-in-out;
	}
	 .letter:nth-child(14) {
		 animation: spinner 14s infinite ease-in-out;
	}
	 .letter:nth-child(15) {
		 animation: spinner 15s infinite ease-in-out;
	}
	 .letter:nth-child(16) {
		 animation: spinner 16s infinite ease-in-out;
	}
	 @keyframes spinner {
		 0% {
			 transform: rot	ate(0deg);
			 color: #f00;
		}
		 33% {
			 color: #0f0;
		}
		 66% {
			 color: #00f;
		}
	}
	 
	</style>
 </head>
 <body>
 <header>
	<div class ="headhbd">
	  <span class='letter'>🎉</span>
	  <span class='letter'>H</span>
	  <span class='letter'>B</span>
	  <span class='letter'>D</span>
	  <span class='space'></span>
	  <span class='letter'>Y</span>
	  <span class='letter'>u</span>
	  <span class='letter'>m</span>
	  <span class='letter'>i</span>
	  <span class='letter'>🎉</span>
	</div>
	<div>
	  <nav class="text-center">
	    <ul class="inline-block">
	      <li id="li1" class="pull-left"><a href="<%=request.getContextPath()%>/info.jsp" data-direction="front">Home</a></li>
	      <li id="li2" class="pull-left"><a href="<%=request.getContextPath()%>/gift.jsp" data-direction="back">Gift</a></li>
	      <li id="li3" class="pull-left"><a href="<%=request.getContextPath()%>/letter.jsp" data-direction="top">Letter</a></li>
	      <li id="li4" class="pull-left"><a href="<%=request.getContextPath()%>/music.jsp" data-direction="right">HBD</a></li>
	    </ul>
	  </nav>
  </div>
</header>
 
<script>
$(function(){
	$("#li1").click(function(){
		document.getElementById('li1').className = "pull-left active";
		document.getElementById("li2").className = "pull-left";
		document.getElementById("li3").className = "pull-left";
		document.getElementById("li4").className = "pull-left";
	});
	$("#li2").click(function(){
		document.getElementById("li1").className = "pull-left";
		document.getElementById("li2").className = "pull-left active";
		document.getElementById("li3").className = "pull-left";
		document.getElementById("li4").className = "pull-left";
	});
	$("#li3").click(function(){
		document.getElementById("li1").className = "pull-left";
		document.getElementById("li2").className = "pull-left";
		document.getElementById("li3").className = "pull-left active";
		document.getElementById("li4").className = "pull-left";
	});
	$("#li4").click(function(){
		document.getElementById("li1").className = "pull-left";
		document.getElementById("li2").className = "pull-left";
		document.getElementById("li3").className = "pull-left";
		document.getElementById("li4").className = "pull-left active";
	});
    
});
</script>