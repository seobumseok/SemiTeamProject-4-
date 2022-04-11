<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>
$(function(){
	// 이미지 클릭시 이미지 모달
		$(".imgC").click(function(){
			$(".modal").show();
			// 이미지 가져오기
			var imgSrc = $(this).children("img").attr("src");
			var imgAlt = $(this).children("img").attr("alt");
			$(".modalBox img").attr("src", imgSrc);
			$(".modalBox img").attr("alt", imgAlt);
			
			// 이미지 텍스트 가져오기
			var imgTit =  $(this).children("p").text();
			$(".modalBox p").text(imgTit);
			
	   // 이미지에 alt값을 가져와 제목으로
			//$(".modalBox p").text(imgAlt);
		});
		
		//.modal안에 button을 클릭하면 .modal닫기
		$(".modal button").click(function(){
			$(".modal").hide();
		});
		
		//.modal밖에 클릭시 닫힘
		$(".modal").click(function (e) {
	    if (e.target.className != "modal") {
	      return false;
	    } else {
	      $(".modal").hide();
	    }
	  });
	});

</script>
<style>
@font-face {
  font-family: "ROKAFSansBold";
  src: url("https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts2201-3@1.0/ROKAFSansBold.woff")
  format("woff");
  font-weight: normal;
  font-style: normal;
}

html,
body {
  background-image: linear-gradient(to top, #d5d4d0 0%, #d5d4d0 1%, #eeeeec 31%, #efeeec 75%, #e9e9e7 100%);
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  max-height: 100%;
  max-width: 100%;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center top;
  
}

.main-container {
  width: 1300px;
  height: 100%;
  margin-top: 100px;
  margin:0 auto;
  position: relative;
}

.cody-sub {
  float: left;
  width: 28%;
  height: 100%;
  margin-top: 50px;
}




/* ======================오른쪽 imgList 모달창 시작==================== */

section {
  float: right;
  width: 70%;
  height: 100%;
}


.imgC>img {
  width: 250px;
  height: 250px;
  border: 1px solid black;
  
}

.imgC>img:hover {
  cursor: zoom-in;
}

.imgList-row {
  display: flex;
  justify-content: space-around;
  margin-top: 60px;
}

.imgC p {
  text-align: center;
}

.modal {
  display: none;
	z-index: 1000;
	width: 100%;
	height: 100vh;
	position: fixed;
	top: 0;
	left: 0;
	background-color: rgba(0, 0, 0, 0.7);
  
}

.modal button {
  position: absolute;
	top: 3rem;
	right: 3rem;
	background: transparent;
	border: 0;
	color: #ffffff;
	font-size: 3rem;
  cursor: pointer;
}

.modalBox {
  position: relative;
	top: 20%;
	left: 50%;
	transform: translate(-50%, -20%);
	background-color: #ffffff;
	width: 30%;
	height: 30%;
	text-align: center;

}

.modalBox img {
  width: 100%;
  
}

.modalBox p {
  color: #ffffff;
	background-color: #000;
	font-size: 2rem;
	padding: 2rem;
}
/* ======================오른쪽 imgList 모달창 끝==================== */


/* ===============왼쪽 버튼 CSS ===============*/

.cody-sub-container {
  height: 170px;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;
}

#workarea {
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: #1e1a3e;
}

#personal {
  color: black;
  text-decoration:none;
  position:absolute;
  bottom:15px;
  right:2%;
}

.spot {
  position: absolute;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
}

.svg-wrapper {
  margin-top: 0;
  position: relative;
  width: 150px;
  height: 40px;
  display: inline-block;
  border-radius: 3px;
  margin-left: 5px;
  margin-right: 5px
}

#shape {
  stroke-width: 6px;
  fill: transparent;
  stroke: black;
  stroke-dasharray: 85 400;
  stroke-dashoffset: -220;
  transition: 1s all ease;
}

#text {
  font-family: "ROKAFSansBold";
  margin-top: -35px;
  text-align: center;
}

#text a {
  color: #9c9c9c;
  text-decoration: none;
  font-weight: 100;
  font-size: 1.1em;
}


.svg-wrapper:hover #shape {
  stroke-dasharray: 50 0;
  stroke-width: 3px;
  stroke-dashoffset: 0;
  stroke: coral;
}
/*================왼쪽 버튼 CSS 끝============== */


/* ===============왼쪽 리스트 시작================= */

.cody-sub-style-list {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  opacity: 1;
  transition: all 500ms ease-out;
}

.cody-sub-style-list.anim-out {
  opacity: 0;
  transform: scale(0.9) translateY(40px);
}


.list {
  position: relative;
  display: flex;
  justify-content: center;
  align-items: center;
  width: 150px;
  height: 150px;
  margin: 7px;
  background-color: white;
  border-radius: 3px;
  
}

.list-img {
  width: 100px;
  height: 100px;
}

.list.invisible{
  display: none;
}

.list-description {
  position: absolute;
  top: 0;
  left: 0;
  background-color: #000000;
  width: 100%;
  height: 100%;
  display: flex;
  flex-direction: column;
  justify-content: center;
  opacity: 0;
  transform: translate(10px);
  transition: all 500ms ease-in;
}

.list:hover .list-description {
  opacity: 0.8;
  transform: translate(0px);
  border-radius: 5px;
}

.list-description h3{
  color: bisque;
  text-align: center;
}

.list-description span {
  color: #4d4d4d;
  text-align: center;
  font-size: 14px;
}

.list-description h3:after {
  display: block;
  position: relative;
  left: 50%;
  content: '';
  width:25px;
  height: 2px;
  margin-left: -12px;
  margin-top: 8px;
  background-color: #9c9c9c;
}

/* ===============왼쪽 리스트 끝================= */


</style>    
	<div class="main-container">
    <h1 class="animate__animated animate__swing">오늘 코디 어때?</h1>
		<div class="cody-sub">
			<div class="cody-sub-container">
				<!--start button -->
				<div class="svg-wrapper">
					<svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
						<rect id="shape" height="40" width="150" />
						<div id="text">
							<a href=""><span class="spot"></span>ALL</a>
						</div>
					</svg>
				</div>
				<!--Next button -->
				<div class="svg-wrapper">
					<svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
						<rect id="shape" height="40" width="150" />
						<div id="text">
							<a href=""><span class="spot"></span>MEN</a>
						</div>
					</svg>
				</div>
				<!--Next button -->
				<div class="svg-wrapper">
					<svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
						<rect id="shape" height="40" width="150" />
						<div id="text">
							<a href=""><span class="spot"></span>WOMEN</a>
						</div>
					</svg>
				</div>
			</div>

	
				<div class="cody-sub-style-list">
					<a href="#" class="list" target="blank">
						<img src="${url}/img/cody_main2.png"  alt="" class="list-img" >
						<div class="list-description">
							<h3>오피스룩</h3>
							<span>오피스룩 설명</span>
						</div>
					</a>
					<a href="#" class="list" target="blank">
						<img src="${url}/img/cody_main3.png" alt="" class="list-img">
						<div class="list-description">
							<h3>오피스룩</h3>
							<span>오피스룩 설명</span>
						</div>
					</a>
					<a href="#" class="list" target="blank">
						<img src="${url}/img/cody_main4.png" alt="" class="list-img">
						<div class="list-description">
							<h3>오피스룩</h3>
							<span>오피스룩 설명</span>
						</div>
					</a>
					<a href="#" class="list" target="blank">
						<img src="${url}/img/cody_main2.png" alt="" class="list-img">
						<div class="list-description">
							<h3>오피스룩</h3>
							<span>오피스룩 설명</span>
						</div>
					</a>
					<a href="#" class="list" target="blank">
						<img src="${url}/img/cody_main2.png" alt="" class="list-img">
						<div class="list-description">
							<h3>오피스룩</h3>
							<span>오피스룩 설명</span>
						</div>
					</a>
					<a href="#" class="list" target="blank">
						<img src="${url}/img/cody_main2.png" alt="" class="list-img">
						<div class="list-description">
							<h3>오피스룩</h3>
							<span>오피스룩 설명</span>
						</div>
					</a>
				</div>
		</div>

  <section>
  	<div class="imgList">
  		<div class="imgList-row">
  		  <div class="imgC">
    			<img src="${url}/img/cody_main2.png" alt="모달할 이미지">
    			<p>이미지 1</p>
    		</div>
    		<div class="imgC">
    			<img src="${url}/img/cody_main3.png" alt="모달할 이미지">
    			<p>이미지 2</p>
    		</div>
    		<div class="imgC">
    			<img src="${url}/img/cody_main4.png" alt="모달할 이미지">
    			<p>이미지 3</p>
    		</div>
  		</div>
  
      <div class="imgList-row">
        <div class="imgC">
    			<img src="${url}/img/cody_main2.png" alt="모달할 이미지">
    			<p>이미지 1</p>
    		</div>
    		<div class="imgC">
    			<img src="${url}/img/cody_main2.png" alt="모달할 이미지">
    			<p>이미지 2</p>
    		</div>
    		<div class="imgC">
    			<img src="${url}/img/cody_main2.png" alt="모달할 이미지">
    			<p>이미지 3</p>
    		</div>
      </div>
  	</div>
  </section>

	<!-- 팝업 될 곳 -->
	<div class="modal">
		<button>&times;</button>
		<div class="modalBox">
			<img src="" alt="">
			<p></p>
		</div>
	</div>

</div>
</body>
</html>
