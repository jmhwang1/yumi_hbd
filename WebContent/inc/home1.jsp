
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
body {
    font-family: "Open Sans", sans-serif;
    font-weight: 300
}

ul {
    list-style: none;
    padding: 0;
    margin: 0
}

li {
    list-style: none
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

a,
a:hover,
a:focus,
a:active {
    text-decoration: none;
    color: inherit
}

.text-center {
    text-align: center
}

.text-left {
    text-align: left
}

.text-right {
    text-align: right
}

.pull-right {
    float: right
}

.pull-left {
    float: left
}

.ver-middle {
    vertical-align: middle
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

header nav ul {
    background-color: rgba(255, 255, 255, 0.2);
    overflow: hidden;
    border-radius: 5px;
    -webkit-border-radius: 5px;
    -moz-border-radius: 5px
}

header nav ul li {
    color: #fff
}

header nav ul li a {
    width: 100px;
    max-width: 150px;
    height: 32px;
    display: block;
    padding-top: 13px
}

header nav ul li.active a,
header nav ul li.active a:hover {
    background-color: rgba(255, 255, 255, 0.2)
}

header nav ul li:hover a {
    background-color: rgba(255, 255, 255, 0.1)
}

.page {
    background-color: rgba(0, 0, 0, 0.2)
}

.page .act-table {
    width: 100%;
    height: 100%
}

.page .act-table .act-table-cell {
    font-size: 100px;
    font-weight: 500;
    color: #fff
}

.page.active {
    z-index: 50
}

#wrap {
    position: fixed;
    top: 0;
    bottom: 0;
    right: 0;
    left: 0;
    transition: .8s;
    -webkit-transition: .8s;
    -moz-transition: .8s
}

#wrap.active {
    top: 10%;
    bottom: 10%;
    right: 10%;
    left: 10%
}

.cube {
    position: relative;
    width: 100%;
    height: 100%;
    transform-style: preserve-3d;
    transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    -webkit-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    -moz-transform: rotateX(0deg) rotateY(0deg) rotateZ(0deg);
    transition: 1s;
    -webkit-transition: 1s;
    -moz-transition: 1s
}

.cube.reverse-back {
    transform: rotateX(180deg) rotateY(0deg) rotateZ(-180deg);
    -webkit-transform: rotateX(180deg) rotateY(0deg) rotateZ(-180deg);
    -moz-transform: rotateX(180deg) rotateY(0deg) rotateZ(-180deg)
}

.cube.reverse-back .back {
    transform: translateZ(-800px) rotateY(-180deg);
    -webkit-transform: translateZ(-800px) rotateY(-180deg);
    -moz-transform: translateZ(-800px) rotateY(-180deg)
}

.cube.reverse-left .left {
    transform: translateX(-800px) rotateY(-90deg);
    -webkit-transform: translateX(-800px) rotateY(-90deg);
    -moz-transform: translateX(-800px) rotateY(-90deg)
}

.cube.reverse-right {
    transform: rotateX(0deg) rotateY(270deg) rotateZ(0deg);
    -webkit-transform: rotateX(0deg) rotateY(270deg) rotateZ(0deg);
    -moz-transform: rotateX(0deg) rotateY(270deg) rotateZ(0deg)
}

.cube.reverse-right .right {
    transform: translateX(800px) rotateY(90deg);
    -webkit-transform: translateX(800px) rotateY(90deg);
    -moz-transform: translateX(800px) rotateY(90deg)
}

.cube.reverse-top {
    transform: rotateX(-90deg) rotateY(0deg) rotateZ(0deg);
    -webkit-transform: rotateX(-90deg) rotateY(0deg) rotateZ(0deg);
    -moz-transform: rotateX(-90deg) rotateY(0deg) rotateZ(0deg)
}

.cube.reverse-top .top {
    transform: translateY(-400px) rotateX(90deg);
    -webkit-transform: translateY(-400px) rotateX(90deg);
    -moz-transform: translateY(-400px) rotateX(90deg)
}

.cube.reverse-bottom .bottom {
    transform: translateY(400px) rotateX(-90deg);
    -webkit-transform: translateY(400px) rotateX(-90deg);
    -moz-transform: translateY(400px) rotateX(-90deg)
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

.front {
    background-color: #28aadc
}

.front.active {
    transform: translateZ(800px);
    -webkit-transform: translateZ(800px);
    -moz-transform: translateZ(800px)
}

.back {
    background-color: #ff3366
}

.back:not(.active) {
    transform: translateZ(-800px) rotateY(-180deg);
    -webkit-transform: translateZ(-800px) rotateY(-180deg);
    -moz-transform: translateZ(-800px) rotateY(-180deg)
}

.back .active {
    transform: translateZ(800px);
    -webkit-transform: translateZ(800px);
    -moz-transform: translateZ(800px)
}

.left:not(.active) {
    transform: translateX(-800px) rotateY(-90deg);
    -webkit-transform: translateX(-800px) rotateY(-90deg);
    -moz-transform: translateX(-800px) rotateY(-90deg)
}

.left .active {
    transform: translateZ(800px);
    -webkit-transform: translateZ(800px);
    -moz-transform: translateZ(800px)
}

.right {
    background-color: #000
}

.right:not(.active) {
    transform: translateX(800px) rotateY(90deg);
    -webkit-transform: translateX(800px) rotateY(90deg);
    -moz-transform: translateX(800px) rotateY(90deg)
}

.right .active {
    transform: translateZ(800px);
    -webkit-transform: translateZ(800px);
    -moz-transform: translateZ(800px)
}

.top {
    background-color: #FFAD33
}

.top:not(.active) {
    transform: translateY(-400px) rotateX(90deg);
    -webkit-transform: translateY(-400px) rotateX(90deg);
    -moz-transform: translateY(-400px) rotateX(90deg)
}

.top .active {
    transform: translateZ(800px);
    -webkit-transform: translateZ(800px);
    -moz-transform: translateZ(800px)
}

.bottom:not(.active) {
    transform: translateY(400px) rotateX(-90deg);
    -webkit-transform: translateY(400px) rotateX(-90deg);
    -moz-transform: translateY(400px) rotateX(-90deg)
}

.bottom .active {
    transform: translateZ(800px);
    -webkit-transform: translateZ(800px);
    -moz-transform: translateZ(800px)
}
</style>
</head>

<style>
@import url('https://fonts.googleapis.com/css2?family=Creepster&family=Sancreek&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Nosifer&display=swap');

body {
  width: 100%;
  height: 100vh;
  margin: 0;
  padding: 0;
  background: black;  
  position: relative;
  overflow: hidden;
}

p {
  margin: 0;
  margin-bottom: 1.5rem;
  padding: 0;
  font-family: 'Creepster', cursive;
  font-size: 80px;
  color: #b77bd1;
  text-shadow: 0px 5px 0px #4df34b, 
               0px 10px 0px #b77bd1, 
               0px 15px 0px #000;
  text-align: center;
}

.container {
  position: absolute; 
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
}

.btns__container {
  text-align: center;
}

.btns {
  padding: 1rem 2rem;
  font-size: 18px;
  text-transform: uppercase;
  background: black; 
  outline: none;
  border: none;
  color: white;
  font-family: 'Nosifer', cursive;
  cursor: pointer;
  transition: color ease 0.3s;
}

.btns:hover {
  color: #b77bd1;
}

.ghost {
  font-size: 35px;
  position: absolute; 
  /*animation: slide 5s;*/
}

@keyframes slide {
  0%   {left:0px; top:0px;}
  25%  {left:200px; top:0px;}
  50%  {left:200px; top:200px;}
  75%  { left:0px; top:200px;}
  100% {left:0px; top:0px;}
}

@media only screen and (max-width: 280px) {
  p {
    
    font-size: 60px;
  }
}

</style>

<div class="container">
	<p>	Happy Birthday Yumi</p>
	<div class="btns__container">
		<button class="btn__confirm btns">
		Join
		</button>
	</div>
  
  <script>
	  $(function(){
	    $('.btn__confirm').click(function(){
	    	
	        var url = $(this).attr("href");
	        $("body div").animate({
	            "opacity": "0",
	            "top": "10px"
	        },500, function () {
	            document.location.href = "<%=request.getContextPath()%>/info.jsp";
	        });
			return false;
	    });
	});
  </script>
  
</div>