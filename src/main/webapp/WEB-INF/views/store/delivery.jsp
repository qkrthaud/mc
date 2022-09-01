<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper ">
<%@ include file="../layout/header.jsp" %>
<div id="container">
<div class="content">
<div class="visualArea bgStore01" data-title="맥딜리버리" data-desc="맥딜리버리">
<div class="inner">
<h1 class="titDep1">맥딜리버리</h1>
<ul class="navPath">
<li><a href="<%=request.getContextPath()%>/main">Home</a></li>
<li><a href="search">Store</a></li>
<li><a href="#">맥딜리버리</a></li>
</ul>
</div>
</div>
<div class="contArea">
<div class="inner">
<h2 class="titDep2">우리집에 맥딜리버리 배달이 되나요?</h2>
<div class="deliverySrch">
<fieldset class="sBox">
<legend>맥딜리버리 가능여부 검색</legend>
<div class="frm frwWrap">
									
<span><input type="text" class="addr1" id="addr" placeholder="주소를 선택해주세요." readonly title="입력 된 주소"></span>
<button type="button" class="btnMC btnM" onclick="daum_post()" title="주소찾기 새창 열림">주소찾기</button>
</div>

<div class="frm">
<input type="text" class="addr2" id="addr2" title="상세주소 입력" placeholder="상세주소를 입력하세요."> 
<input type="text" class="addr3" id="dong" title="동 입력"> <span class="unit">동</span>
<input type="text" class="addr3" id="ho" title="호 입력"> <span class="unit">호</span>
</div>
<p class="txt">* 아파트의 경우 동, 호수를 입력하셔야 정확한 검색이 가능합니다.</p>
<div class="btn">
<button type="button" class="btnMC btnM" onclick="chkAddr()">검색하기</button>
</div>
</fieldset>
<div class="rBox">
<p role="text" class="default" id="default" style="display:inline-block"><strong>검색 결과가 나타납니다.</strong></p>
<p role="text" class="result ok" id="ok" style="display:none"><strong>맥딜리버리<br>배달이<br>가능합니다</strong> <span>전화 또는 온라인으로<br> 주문할 수 있습니다.</span></p>
<p role="text" class="result fail" id="fail" style="display:none"><strong>맥딜리버리<br>배달이<br>불가능합니다</strong> <span>빠른 시일 내에 고객님이 계신 곳에<br> 서비스가 가능하도록 노력하겠습니다.</span></p>
</div>
</div>
<ul class="listDep1">
<li>매장 별 무료 배달 주문 금액 및 소액주문비는 다르게 운영될 수 있으며, 주문 시 결제 페이지에서 미리 확인 하실 수 있습니다.</li>
<li>맥딜리버리 가격은 매장과 상이합니다.</li>
<li>배달 가능 구역 내에서도 기상조건이나 기타 매장의 사정에 따라 배달 서비스 이용이 어려울 수 있습니다.</li>
<li>주문이 밀리는 시간대에는 배달이 다소 지연될 수 있습니다. 고객님의 너그러운 이해 부탁 드립니다.</li>
<li>메뉴 주문 시 제공 되는 케찹류나 기타 물품의 경우 기본 제공 수량 기준으로 배달하여 드립니다.</li>
<li>맥딜리버리의 운영 시간은 매장과 상이할 수 있습니다.</li>
</ul>
<div class="btnArea mcdelivery">
<div class="appDown">
<div>
<a href="https://www.mcdelivery.co.kr/kr/" class="btnMC btnL action" target="_blank" title="새창 열림">맥딜리버리 온라인 주문하기</a>
</div>
</div>
<div class="app_store">
<div class="android">
<a href="https://play.google.com/store/apps/details?id=com.mwos2.mcdelivery&hl=ko" target="_blank" title="새창열림">
<img src="<%=request.getContextPath()%>/resources/images/store/img_app_android.png" alt="Google play 맥딜리버리 앱 다운로드 QR코드"></br>
<strong>안드로이드 맥딜리버리 앱 다운</strong>
</a>
</div>
<div class="ios">
<a href="https://apps.apple.com/kr/app/%EB%A7%A5%EB%94%9C%EB%A6%AC%EB%B2%84%EB%A6%AC/id1027699629 " target="_blank" title="새창열림">
<img src="<%=request.getContextPath()%>/resources/images/store/img_app_ios.png" alt="app store 맥딜리버리 앱 다운로드 QR코드"></br>
<strong>아이폰 맥딜리버리 앱 다운</strong>
</a>
</div>
</div>

</div>
</div>
</div>


<%@ include file="../layout/aside.jsp" %>
</div>
<%@ include file="../layout/footer.jsp" %>
</div>
</div>


<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function daum_post(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
		    if(data.userSelectedType == 'R'){
		    	var addr = data.roadAddress
		    }else{
		    	var addr = data.jibunAddress
		    }
		    document.getElementById("addr").value = addr
		    
		    document.getElementById("addr2").focus()
        }
    }).open();
}
	
</script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function chkAddr(){
	var n = document.getElementById("addr").value;
	if ($("#addr").val() == "") {
        alert("주소를 입력하세요.");
        $("#addr").focus();
        return;
    }
	console.log(n)
	console.log(typeof n)
	$.ajax({
		url : "addr_result",
		type : "post",
		data : JSON.stringify(n), //서버로 보낼 데이터
		contentType : "application/json; charset=utf-8", //서버로 보낼 데이터 타입
		dataType : "json", // return type
		success : function(data){
			console.log("data : ",data)
			console.log(typeof data)
			if(data==0){
				$("#default").hide();
                $('#ok').parent('.rBox').removeClass('ok');
                $('#ok').parent('.rBox').addClass('fail');
            	$("#fail").show();
            	$("#ok").hide();
			}else{
				$("#default").hide();
            	$('#ok').parent('.rBox').addClass('ok');
            	$('#ok').parent('.rBox').removeClass('fail');
            	$("#fail").hide();
            	$("#ok").show();
			}
		},error : function(data){
			console.log("data : ",data)
			
		}
		
	})
}

</script>


</body>
</html>