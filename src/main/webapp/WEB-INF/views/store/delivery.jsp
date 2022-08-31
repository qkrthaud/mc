<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>우리집에 맥딜리버리 배달이 되나요?</h1><br>
<form id="frm" action="delivery">
<input type="text" readonly  id="addr"><input type="button" value="검색" onclick="daum_post()"><br>

<input type="text" id="addr2" placeholder="상세주소를 입력하세요"><input type="button" onclick="chkAddr()" value="검색">
</form>
<img id="img" src="<%=request.getContextPath()%>/resources/images/store/ico_marker.png">
<ul type="circle">
<li>매장 별 무료 배달 주문 금액 및 소액주문비는 다르게 운영될 수 있으며, 주문 시 결제 페이지에서 미리 확인 하실 수 있습니다.</li>
<li>맥딜리버리 가격은 매장과 상이합니다.</li>
<li>배달 가능 구역 내에서도 기상조건이나 기타 매장의 사정에 따라 배달 서비스 이용이 어려울 수 있습니다.</li>
<li>주문이 밀리는 시간대에는 배달이 다소 지연될 수 있습니다. 고객님의 너그러운 이해 부탁 드립니다.</li>
<li>메뉴 주문 시 제공 되는 케찹류나 기타 물품의 경우 기본 제공 수량 기준으로 배달하여 드립니다.</li>
<li>맥딜리버리의 운영 시간은 매장과 상이할 수 있습니다.</li>
</ul>



<a href="https://www.mcdelivery.co.kr/kr/" target="-blank">맥딜리버리 온라인 주문하기</a>
<a href="https://play.google.com/store/apps/details?id=com.mwos2.mcdelivery&hl=ko" target="-blank">안드로이드 맥딜리버리 앱 다운</a>
<a href="https://apps.apple.com/kr/app/%EB%A7%A5%EB%94%9C%EB%A6%AC%EB%B2%84%EB%A6%AC/id1027699629" target="-blank">아이폰 맥딜리버리 앱 다운</a>
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
				document.getElementById("img").src="/root/resources/images/store/1580887410227.png";
			}else{
				document.getElementById("img").src="/root/resources/images/store/1580887501964.png";
			}
		},error : function(data){
			console.log("data : ",data)
			
		}
		
	})
}

</script>


</body>
</html>