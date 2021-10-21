<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="inc/header.jsp"%>

<style>
.selby-gifts-section {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  position: relative;
  padding-top: 16%;
}
.gift-bubbles {
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 75px;
}
.gift-bubble-wrapper {
  width: 100px;
}
.gift-bubble-item {
  margin: auto;
  background: rgba(255,255,255,0.4);
  border: 2px solid rgba(255,255,255,0.4);
  border-radius: 50%;
  width: 66.66666666666667px;
  height: 66.66666666666667px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  cursor: default;
}
.christmas-gifts {
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 580px;
  margin-bottom: 75px;
}
.gift-wrapper {
  position: relative;
}
.gift-wrapper.jump:hover {
  cursor: pointer;
  animation: wrapperHover 0.75s;
}
.gift-wrapper.jump:hover .gift-box {
  animation: giftBoxHover 0.85s;
}
.gift-box {
  background: #d3000a;
  width: 100px;
  height: 100px;
  transition: 0.25s;
  border-radius: 3.03030303030303px;
  position: relative;
  box-shadow: 0 0 1px 1px #222;
  z-index: 2;
}
.gift-box::before,
.gift-box::after {
  background: #090;
  content: '';
  display: block;
  position: absolute;
  box-shadow: 0 0 1px 0 #222;
}
.gift-box::before {
  top: 50%;
  width: 100%;
  height: 19px;
  transform: translateY(-50%);
}
.gift-box::after {
  top: 0;
  left: 50%;
  height: 100%;
  width: 19px;
  transform: translateX(-50%);
}
.gift-box > span {
  display: inline-block;
  position: absolute;
  top: 0;
  right: 10px;
  text-align: center;
  font-size: 0.7rem;
  background: #fff;
  color: #d3000a;
  font-weight: bold;
  width: 20px;
  height: 25px;
  line-height: 30px;
  border-radius: 0 0 3px 2px;
  box-shadow: 0 0 1px 0 #222;
}
.gift-box > span::before {
  display: inline-block;
}
.gift-wrapper:nth-of-type(1) .gift-box > span::before {
  content: ' 1 ';
}
.gift-wrapper:nth-of-type(2) .gift-box > span::before {
  content: ' 2 ';
}
.gift-wrapper:nth-of-type(3) .gift-box > span::before {
  content: ' 3 ';
}
.gift-wrapper:nth-of-type(4) .gift-box > span::before {
  content: ' 4 ';
}
.gift-wrapper:nth-of-type(5) .gift-box > span::before {
  content: ' 5 ';
}
.gift-ribbon {
  position: absolute;
  top: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 66.66666666666667px;
  height: 66.66666666666667px;
  background: transparent;
}
.gift-ribbon::before,
.gift-ribbon::after {
  content: '';
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 19px;
  background: #090;
  box-shadow: 0 0 1px 1px #222;
}
.gift-ribbon::before {
  transform: rotate(45deg);
  border-radius: 0 0 0 10px;
}
.gift-ribbon::after {
  transform: rotate(-45deg);
  border-radius: 0 0 10px 0;
}
.promo-wrapper {
  margin-bottom: 25px;
}
.promo-wrapper,
.congrats-wrapper {
  width: 100%;
  text-align: center;
  padding: 2rem 0;
  border-radius: 10px;
  border: 2px solid rgba(255,255,255,0.2);
  background: rgba(255,255,255,0.4);
  cursor: default;
}
.promo-wrapper span,
.congrats-wrapper span {
  display: block;
  margin: 0.5rem 0;
}
.discount,
.codeword {
  color: #090;
}
.christmas-question {
  position: absolute;
  bottom: 30px;
  color: rgba(255,255,255,0.6);
  font-size: 180px;
  cursor: default;
}
@-moz-keyframes wrapperHover {
  0% {
    transform: translateY(0);
  }
  25% {
    transform: translateY(-30%);
  }
  50% {
    transform: translateY(0);
  }
  60% {
    transform: translateY(4%);
  }
  70% {
    transform: translateY(0);
  }
}
@-webkit-keyframes wrapperHover {
  0% {
    transform: translateY(0);
  }
  25% {
    transform: translateY(-30%);
  }
  50% {
    transform: translateY(0);
  }
  60% {
    transform: translateY(4%);
  }
  70% {
    transform: translateY(0);
  }
}
@-o-keyframes wrapperHover {
  0% {
    transform: translateY(0);
  }
  25% {
    transform: translateY(-30%);
  }
  50% {
    transform: translateY(0);
  }
  60% {
    transform: translateY(4%);
  }
  70% {
    transform: translateY(0);
  }
}
@keyframes wrapperHover {
  0% {
    transform: translateY(0);
  }
  25% {
    transform: translateY(-30%);
  }
  50% {
    transform: translateY(0);
  }
  60% {
    transform: translateY(4%);
  }
  70% {
    transform: translateY(0);
  }
}
@-moz-keyframes giftBoxHover {
  0% {
    transform: scale(1, 1);
  }
  25% {
    transform: scale(0.95, 1.05);
  }
  50% {
    transform: scale(1, 1);
  }
  60% {
    transform: scale(1.1, 0.9);
  }
  70% {
    transform: scale(1, 1);
  }
}
@-webkit-keyframes giftBoxHover {
  0% {
    transform: scale(1, 1);
  }
  25% {
    transform: scale(0.95, 1.05);
  }
  50% {
    transform: scale(1, 1);
  }
  60% {
    transform: scale(1.1, 0.9);
  }
  70% {
    transform: scale(1, 1);
  }
}
@-o-keyframes giftBoxHover {
  0% {
    transform: scale(1, 1);
  }
  25% {
    transform: scale(0.95, 1.05);
  }
  50% {
    transform: scale(1, 1);
  }
  60% {
    transform: scale(1.1, 0.9);
  }
  70% {
    transform: scale(1, 1);
  }
}
@keyframes giftBoxHover {
  0% {
    transform: scale(1, 1);
  }
  25% {
    transform: scale(0.95, 1.05);
  }
  50% {
    transform: scale(1, 1);
  }
  60% {
    transform: scale(1.1, 0.9);
  }
  70% {
    transform: scale(1, 1);
  }
  
 .congrats-wrapper button {

}
 .button1 .button1:hover {
	 color: white;
	 background: #009bd5;
}

}

</style>

<div class="selby-gifts-section">
  <div class="promo-wrapper"><span>선물을 고르세요</span></div>
  <div class="gift-bubbles">
    <div class="gift-bubble-wrapper">
      <div class="gift-bubble-item">?</div>
    </div>
    <div class="gift-bubble-wrapper">
      <div class="gift-bubble-item">?</div>
    </div>
    <div class="gift-bubble-wrapper">
      <div class="gift-bubble-item">?</div>
    </div>
    <div class="gift-bubble-wrapper">
      <div class="gift-bubble-item">?</div>
    </div>
    <div class="gift-bubble-wrapper">
      <div class="gift-bubble-item">?</div>
    </div>
  </div>
  <div class="christmas-gifts">
    <div class="gift-wrapper jump">
      <div class="gift-ribbon"></div>
      <div class="gift-box"><span></span></div>
    </div>
    <div class="gift-wrapper jump">
      <div class="gift-ribbon"></div>
      <div class="gift-box"><span></span></div>
    </div>
    <div class="gift-wrapper jump">
      <div class="gift-ribbon"></div>
      <div class="gift-box"><span></span></div>
    </div>
    <div class="gift-wrapper jump">
      <div class="gift-ribbon"></div>
      <div class="gift-box"><span></span></div>
    </div>
    <div class="gift-wrapper jump">
      <div class="gift-ribbon"></div>
      <div class="gift-box"><span></span></div>
    </div>
  </div>
  <div class="congrats-wrapper">
	  <span class="codeword"></span>
   	  <img id="img1" src="" width="200" height="200" style="margin-left: auto; margin-right: auto; display: block;"/>
	  <button id="button1" class="button1" style="	  height:30px;
	  width:150px;
	  border-radius:8px;
	  padding:10px;
	  font-size:20px;
	  font-family: 'Oswald', sans-serif;
	  height:52px;
	  cursor:pointer;
	  background-color:wheat;">다시하기</button>
  </div>
  <div class="christmas-question">?</div>
</div>



<script>
$(function(){
    
    $('.congrats-wrapper').css('opacity', 0);
    
    /* Данные */
    var currentGift;
    var gifts = $('.gift-wrapper');
    var prizes = [
            ['꽝', '«꽝»'],
            ['꽝', '«꽝»'],
            ['꽝', '«꽝»'],
            ['꽝', '«꽝»'],
            ['당첨', '«당첨»'],
        ];
    var boxes = [];
    var bubbles = $('.gift-bubble-item');
    
    /* Функция: случайное целое число
    между min (включительно) и max (не включая max) */
    function getRandomInt(min, max) {
        return Math.floor(Math.random() * (max - min)) + min;
    }

    /* Кладем призы в коробки случайным образом */
    var prizesLength = prizes.length;
    for (let i = 0; i < prizesLength; i++) {
        var item = prizes.splice(getRandomInt(0, prizes.length), 1)[0];
        boxes.push(item);
    }
    
    /* отслеживаем нажатие по подарку
       получаем его порядковый номер  */
    $(gifts).on('click', function showResult(event) {
        $.each(gifts, function(key) {
            if (gifts[key] == event.currentTarget) {
                currentGift = key;
            }
        });
        $(gifts).off('click', showResult);
        
        $.each(bubbles, function(key, value) {
            $(bubbles[key]).html(boxes[key][0]);
        });
        $(bubbles[currentGift]).css({
            'textDecoration' : 'underline',
            'color' : 'forestGreen'
        });
        if('당첨'===boxes[currentGift][0]){
            $('.gift-wrapper').removeClass('jump');
            $('.christmas-question').css('opacity', 0);
            $('.congrats-wrapper').css('opacity', 1);
//             $('.congrats-wrapper span').eq(0).html(boxes[currentGift][0]);
            document.getElementById('img1').src = "images/success.png";
            document.getElementById("button1").style.display="none";
        }else{
            $('.gift-wrapper').removeClass('jump');
            $('.christmas-question').css('opacity', 0);
            $('.congrats-wrapper').css('opacity', 1);
//             $('.congrats-wrapper span').eq(0).html(boxes[currentGift][0]);
            document.getElementById('img1').src = "images/fail1.png";

        }
       	
    });
    
    $('.button1').click(function(){
    	location.reload();
    });
    
    
});
</script>

<%@ include file="inc/footer.jsp"%>