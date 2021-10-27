<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="inc/header.jsp"%>
 
 <style>
 @import url(https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,700,600,200,300,900);
 

 .card {
	 position: absolute;
	 top: 50%;
	 left: 50%;
	 transform: translate(-50%, -50%);
}
 @media only screen and (max-width: 768px) {
	 .card {
		 width: 18rem;
	}
}
 .card .panel {
	 transition: all 0.35s ease-in-out;
	 padding: 1.5rem 2rem;
	/* position: absolute;
	 */
	 background-color: #fff;
	 width: 100%;
	 height: 100%;
	 border: none;
	 overflow: hidden;
}
 .card .meta {
	 top: 0;
	 left: 0;
	 z-index: 1;
	 margin: 0;
	 position: relative;
	 text-align: center;
	 transform: translateX(0);
	 padding: 2rem 4rem;
	 border-right: 1px solid transparent;
}
 .card .meta picture {
	 position: relative;
	 display: inline-block;
}
 .card .meta img {
	 object-fit: cover;
}
 .card .meta .avatar {
	 border-radius: 50%;
}
 .card .meta .company-logo {
	 position: absolute;
	 bottom: -0.5rem;
	 right: 0;
}
 .card .meta .name {
	 font-size: 2rem;
	 text-align: center;
	 margin-top: 1rem;
	 font-weight: 300;
}
 .card .meta .title {
	 font-size: 1.1rem;
	 font-weight: 600;
	 margin: 1rem 0 0;
}
 @media only screen and (min-width: 768px) {
	 .card .info {
		 transform: translateY(0);
		 top: 0;
		 left: 0;
		 z-index: 0;
		 position: absolute;
	}
}
 @media only screen and (min-width: 768px) {
	 .card:hover .meta {
		 transform: translateX(-69.5%);
		 border-color: #00a7c9;
	}
	 .card:hover .info {
		 transform: translateX(20%);
		 width: 150%;
	}
}
 
 </style>
 			<div class="container">
				<div class="row">
<section class="card">
  <figure class="panel meta">
    <picture>
      <img class="avatar" src="images/yumi.jpg" width="128" height="128"/>
    </picture>
    <figcaption>

      <h1 class="name" >조유미</h1>
      <h3 class="title">1996.10.29</h3>
      <h3 class="title"><a href = "https://instagram.com/yu_miii3?utm_medium=copy_link" target = "링크" >@yu_miii3 </a></h3>
    </figcaption>
  </figure>
  
  <div class="panel info">
    <h4 style="text-align:center">🎂🌈 ҉ 주인공 정보 ҉ 🌈🎂</h4>
	<p>별명 : 딸기모찌</p>
	<p>키 : 168</p>
	<p>혈액형 : A</p>
	<p>MBTI : ENFP</p>
	<p>특기 : 애교 </p>
  </div>
  
</section>
  </div>
    </div>
<script>

</script>

<%@ include file="inc/footer.jsp"%>