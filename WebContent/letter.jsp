<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="inc/header.jsp"%>
 
 <style>
@import url(https://fonts.googleapis.com/css?family=Allan:700,400);


.envelope {
  z-index: 2;
  position: absolute;
  width: 550px;
  height: 366.66667px;
  top: 50%;
  left: 50%;
  margin-top: -183.33333px;
  margin-left: -275px;
  transform-style: preserve-3d;
  transform-origin: right center;
  transition: transform 1s ease;
  font-family: "Allan", sans-serif;
  color: #1F1F1F;
}
.envelope .front, .envelope .back {
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #FFF;
  border-radius: 5px;
  box-shadow:  0 0 30px -5px #fbc0b9eb;
}
.envelope .front {
  backface-visibility: hidden;
  cursor: pointer;
  display: table;
}
.envelope .front:focus {
  outline: none;
}
.envelope .front .stamp {
  transform: translate3d(0, 0, 1px);
  position: absolute;
  width: 80px;
  height: 80px;
  right: 10px;
  top: 10px;
  padding: 10px;
  background: radial-gradient(rgba(0, 0, 0, 0) 0px, rgba(0, 0, 0, 0) 4px, #f6f6df 4px, #f6f6df);
  background-size: 20px 20px;
  background-position: -10px -10px;
}
.envelope .front .stamp:after {
  content: "";
  display: block;
  width: 100%;
  height: 100%;
  background-color: #FFF;
  border-radius: 2px;
}
.envelope .front .mail {
  text-align: center;
  display: table-cell;
  vertical-align: middle;
}
.envelope .front .mail p {
  font-weight: bold;
  margin: 0;
}
.envelope .back .letter p {
  font-size: 30px;
/*   line-height: 20px; */
	letter-spacing: 2px;
	color: #ff969f;
}
.envelope .front .mail p:first-child {
  font-size: 50px;
  line-height: 50px;
	color: #ff969f;
}
.envelope .front .mail p:last-child {
  font-size: 30px;
}
.envelope .back .letter p:nth-child(2) {
  font-size: 20px;
	color: black;
}
.envelope .back .letter p:nth-child(3) {
  font-size: 30px;
	color: #f57882;
	margin-top: 150px;
	float: right;
}
.envelope .back {
  transform: rotateY(180deg) translate3d(0, 0, 1px);
}
.envelope .back .flip {
  position: absolute;
  width: 100%;
  height: 100%;
  overflow: hidden;
}
.envelope .back .flip:before {
  content: "";
  position: absolute;
  background-color: #FFF;
  box-shadow: 0px 0px 100px #f5c1bc52;

}
.envelope .back .top-flip:before, .envelope .back .bottom-flip:before {
  width: 388.90873px;
  height: 388.90873px;
}
.envelope .back .top-flip {
  z-index: 5;
  transform-origin: top center;
}
.envelope .back .top-flip:before {
  transform-origin: top left;
  transform: rotate(-45deg);
  border-bottom-left-radius: 50px;
  border-top-left-radius: 10px;
  border-bottom-right-radius: 10px;
}
.envelope .back .bottom-flip {
  z-index: 4;
}
.envelope .back .bottom-flip:before {
  transform-origin: left bottom;
  transform: rotate(45deg) translate(-15px, -15px);
  border-top-left-radius: 100px;
  border-bottom-left-radius: 10px;
  border-top-right-radius: 10px;
}
.envelope .back .left-flip:before, .envelope .back .right-flip:before {
  width: 269.27249px;
  height: 269.27249px;
  top: -5px;
}
.envelope .back .left-flip {
  z-index: 3;
}
.envelope .back .left-flip:before {
  transform-origin: top left;
  transform: rotate(45deg);
  border-top-left-radius: 20px;
  border-bottom-right-radius: 30px;
  border-top-right-radius: 5px;
}
.envelope .back .right-flip {
  z-index: 2;
}
.envelope .back .right-flip:before {
  right: 0;
  transform-origin: top right;
  transform: rotate(-45deg);
  border-top-right-radius: 20px;
  border-bottom-left-radius: 30px;
  border-top-left-radius: 5px;
}
.envelope .back .letter {
  z-index: 1;
  position: absolute;
  top: 5px;
  left: 10px;
  width: 530px;
  height: 346.66667px;
  background-color: #FFF;
  border-radius: 5px;
  padding: 0 30px;
  box-sizing: border-box;
  box-shadow: 0px 1px 100px #fbc0b9eb;
}
.envelope .back .letter div {
  position: relative;
  margin-top: 25px;
}
.envelope .back .letter label {
  position: absolute;
  font-size: 16px;
  line-height: 20px;
  opacity: 0;
  top: -15px;
  transition: all 0.1s linear;
  color: #ADADAD;
}
.envelope .back .letter label.show {
  opacity: 1;
  top: -18px;
}
.envelope .back .letter label.focus {
  color: inherit;
}
.envelope .back .letter ::placeholder {
  color: #ADADAD;
}
.envelope .back .letter input[type='text'], .envelope .back .letter textarea {
  border: none;
  box-sizing: border-box;
  width: 100%;
  padding: 5px;
  margin: 0;
  background-color: #F6F6DF;
}
.envelope .back .letter input:focus, .envelope .back .letter textarea:focus {
  outline: none;
}
.envelope .back .letter input, .envelope .back .letter textarea {
  font-family: "Allan", sans-serif;
  font-size: 20px;
}
.envelope .back .letter input[type='text'] {
  height: 33px;
}
.envelope .back .letter input[type='submit'] {
  font-weight: bold;
  cursor: pointer;
  border: none;
  border-radius: 2px;
  padding: 5px 20px;
  background-color: #e7e1bc;
  margin: 0;
  transition: all 0.1s linear;
}
.envelope .back .letter input[type='submit']:hover {
  background-color: #DCD0AA;
}
.envelope .back .letter textarea {
  resize: none;
  height: 117.66667px;
}
.envelope.new {
  animation: new 1s forwards;
}
.envelope.open {
  animation: open 3s forwards;
}
.envelope.open .top-flip {
  animation: flip-open 1s 1s forwards;
}
.envelope.open .letter {
  animation: letter-out 1s 2s forwards;
}
.envelope.send {
  animation: send 4s forwards;
}
.envelope.send .top-flip {
  transform: rotateX(-180deg);
  z-index: -1;
  animation: flip-close 1s 1s forwards;
}
.envelope.send .letter {
  animation: letter-in 1s forwards;
}



@keyframes new {
  0% {
    left: 0%;
    margin-left: -550px;
  }
  100% {
    left: 50%;
    margin-left: -275px;
  }
}
@keyframes open {
  0% {
    transform: translate3d(0, 0, 0) rotateY(0);
  }
  33.333% {
    transform: translate3d(-100%, 0, 0) rotateY(-180deg);
  }
  66.666% {
    transform: translate3d(-100%, 0, 0) rotateY(-180deg);
  }
  100% {
    transform: translate3d(-100%, 733.33333px, 0) rotateY(-180deg);
  }
}
@keyframes flip-open {
  0% {
    transform: rotateX(0deg);
    z-index: 5;
  }
  50% {
    transform: rotateX(0deg);
    z-index: 5;
  }
  100% {
    transform: rotateX(-180deg);
    z-index: -1;
  }
}
@keyframes letter-out {
  0% {
    transform: translate3d(0, 0, 0);
    box-shadow: 0 0px 30px -5px #fbc0b9eb;
  }
  100% {
    transform: translate3d(0, -733.33333px, 0);
    box-shadow: 0 0px 30px -5px #fbc0b9eb;
  }
}
@keyframes send {
  0% {
    transform: translate3d(-100%, 733.33333px, 0) rotateY(-180deg);
    left: 50%;
    margin-left: -275px;
  }
  25% {
    transform: translate3d(-100%, 0, 0) rotateY(-180deg);
    left: 50%;
    margin-left: -275px;
  }
  50% {
    transform: translate3d(-100%, 0, 0) rotateY(-180deg);
    left: 50%;
    margin-left: -275px;
  }
  75% {
    transform: translate3d(0, 0, 0) rotateY(0deg);
    left: 50%;
    margin-left: -275px;
  }
  100% {
    transform: translate3d(0, 0, 0) rotateY(0deg);
    left: 100%;
    margin-left: 20px;
  }
}
@keyframes flip-close {
  0% {
    transform: rotateX(-180deg);
    z-index: -1;
  }
  50% {
    transform: rotateX(0deg);
    z-index: 5;
  }
  100% {
    transform: rotateX(0deg);
    z-index: 5;
  }
}
@keyframes letter-in {
  0% {
    transform: translate3d(0, -733.33333px, 0);
    box-shadow: inset 0 0px 30px -5px #a87e50, 0 0 20px -5px;
  }
  100% {
    transform: translate3d(0, 0, 0);
    box-shadow: inset 0 0px 30px -5px #b08c5b, 0 0 10px -5px;
  }
}
</style>



<div class="envelope new">
  <div class="front">
    <div class="mail">
      <p>Happy Birthday Yumi</p> 
      <p>Click me</p>
    </div>
  </div>
  <div class="back">
    <div class="letter">
		<p>유미에게 </p>
		<p>생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1생일 축하해1</p>
    </div>
    <div class="flip left-flip"></div>
    <div class="flip right-flip"></div>
    <div class="flip bottom-flip"></div>
    <div class="flip top-flip"></div>
  </div>
  
  <script>
  $(function(){

	  if (!$('.envelope').hasClass('open')){
	    $('.envelope').click(function(){
	      $(this).removeClass('new').addClass('open');
	    });
	  }
	  
	});
  </script>
  
</div>