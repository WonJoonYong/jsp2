<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gallery : 파일 업로드 연습</title>
</head>
<script type="text/javascript">
	function fileValid(){
		const imgfile = document.forms[0].pic //document.
		const maxSize = 1*1024*1024;
		
		console.log(document.forms[0].pic.value)
		if(imgfile.value =="" || imgfile.value == null){
			alert('파일첨부는 필수.')
			return false;
		}else{
			if(!imgfile.value.match(/(.*?).).(jpg|png|gif)$/)){
				alert('파일 형식은 jpg, png, gif만 가능.')
				//isvalid = false;
				return false;	// onsubmit 속성으로 호출된 함수 에서 return false 이면 submit 안함.
				
			}
			if(imgfile.files[0].size > maxsize){	
				// imgfile.value 는 선택한 파일명, imgfile.files[0] 다중선택 가능하므로 파일자체룰 인덱스로 지정.
				alert('최대 파일크기는 1MB입니다.')
				//isvalid = false;
				return false;	
			}
		}
	}
</script>
<body>
<h3>이미지 파일 업로드 하기.</h3>
<hr>

	<!-- 파일 업로드를 할때 반드시  method = "post" enctype = "multipart/form-data"  -->
	<form action = "gallerySave.jsp" method = "post" enctype = "multipart/form-data" onsubmit = "return fileValid()">
		<input type = "text" name = "title" placeholder = "제목을 입력하세요."  >
		<input type = "file" name = "pic" accept = "image/jpeg" id = "imagefile">
		<!-- 웹에서는 파일의 형식을 확장자로 구분하지 않고 MIME 형식을 사용합니다.
			image/*, image/*.png , video/* 등등 -->
		<button>전송</button>
	</form>
	<!-- 
		1. form 요소의 file 타입으로 클라이어느가 파일을 선택.
		2. 서버 페이지에서는 file 타입요소로 전달된 파일을 다른파라미터 (입력값)과 함께 전송 받습니다. (업로드)
			ㄴ-> 서버에서 업로드 폴더 설정이 필요.
		3. 2번에서 파일 전송에 필요한 Request 처리가 별도로 필요로 함.	-> MultipartRequest 클래스
	 -->



</body>

</html>