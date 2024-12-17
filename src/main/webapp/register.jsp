<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- UT-NodeJS 중간고사 -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>DJU 기말고사 | Register</title>

    <!-- 학생 이름과 학번 -->
    <meta name="author" content="???" />
    <meta name="description" content="???" />
    
    <!-- CSS 파일에 대한 link테그를 수정하십시오 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/style.css" />
    <link
      rel="stylesheet"
      media="(max-width: 768px)"
      href="${pageContext.request.contextPath}/public/css/style.small.css"
    />
    <link href="${pageContext.request.contextPath}/public/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/confetti.css" />

    <!-- JS 파일에 대한 script테그를 수정하십시오 -->
    <script defer src="${pageContext.request.contextPath}/public/js/functions.js"></script>
  </head>

  <script type="text/javascript">
  	function checkform(){
  		let form = document.getElementById("loginForm");
		let name = document.getElementById("input_name");
		let pw = document.getElementById("input_pw");
		let email = document.getElementById("input_email");
		let phone = document.getElementById("input_phone");
		
		let name_value = name.value;
		let pw_value = pw.value;
		let email_value = email.value;
		let phone_value = phone.value;
		
		if(name.value==""){
			alert("이름을 입력하세요!");
			name.select();
			name = name.value;
			return;
		}
		else{
			for(let i =0; i<name.value.length; i++){
				let ch = name.value.charAt(i);
				console.log(ch);
				
				if((ch>'a'||ch<'z') && (ch>'A' || ch<'Z') && (ch>'0' || ch<'9')){
					alert("이름은 영문 소문자만 입력 가능합니다.");
					name.select();
					name_value = name.value;
					return;
				}
			}
		}
		//////////////////////////////
		if(pw.value==""){
			alert("비밀번호를 입력하세요!");
			pw.select();
			pw_value = pw.value;
			return;
		}
		else if(pw.value.length <= 4 || pw.value.length >= 12){
			alert("비밀번호는 4~12자 이내로 입력 가능합니다.");
			pw.select();
			pw_value = pw.value;
			return;
		}
		else if(isNaN(pw.value)){
			alert("비밀번호는 숫자만 입력 가능합니다.");
			pw.select();
			pw_value = pw.value;
			return;
		}
		//////////////////////////////
		if(email.value==""){
			alert("이메일을 입력하세요!");
			email.select();
			email_value = email.value;
			return;
		}
		
		//////////////////////////////
		if(phone.value==""){
			alert("전화번호를 입력하세요!");
			phone.select();
			phone_value = phone.value;
			return;
		}
		else if(phone.value.length != 11){
			alert("전화번호 11자리를 입력해 주세요.");
			phone.select();
			phone_value = phone.value;
			return;
		}
		else if(isNaN(phone.value)){
			alert("전화번호는 숫자만 입력 가능합니다.");
			phone.select();
			phone_value = phone.value;
			return;
		}
		
		form.submit();
  	}
  </script>

  <body>
    <!-- HEADER -->

    <jsp:include page="header.jsp"></jsp:include>

    <!-- MAIN 페이지 내용 -->
    <main class="">
      <div class="container col-xl-10 col-xxl-8 px-4 py-5">
        <div class="row align-items-center g-lg-5 py-3">
          <div class="col-lg-7 text-center text-lg-start mb-3">
            <figure>
              <img
                src="https://cdn.pixabay.com/photo/2015/08/07/06/28/transportation-879026_960_720.jpg"
              />
            </figure>
            <h1 class="display-4">Contact Us</h1>
            <p class="lead col-lg-10 fs-4">Get in touch to find out more.</p>
          </div>

          <div class="col-md-10 mx-auto col-lg-5 mb-5">

            <!-- action 속성에서 맞는 파일 경로 입력하세요 -->
            <form class="p-4 p-md-5 border rounded-3 bg-light" action="./thanks.jsp" method="POST" >
              <div class="form-floating mb-3">
                <input type="text" class="form-control" id="input_name" placeholder="Name" />
                <label for="input_name">Name</label>
              </div>

              <div class="form-floating mb-3">
                <input type="email" class="form-control" id="input_email" name="email" placeholder="name@example.com" required />
                <label for="input_email">Email address</label>
              </div>

              <div class="form-floating mb-3">
                <input type="tel" class="form-control" id="input_phone" name="phone" placeholder="Phone" required />
                <label for="input_phone">Phone</label>
              </div>

              <hr>

              <div class="mb-3">
                <label>Gender</label><br>
                <input type="radio" id="male" name="gender" value="Male" />
                <label for="male">Male</label>
                <input type="radio" id="female" name="gender" value="Female" />
                <label for="female">Female</label>
              </div>

              <div class="mb-3">
                <label>Hobbies</label><br>
                <input type="checkbox" id="cricket" name="hobbies" value="Cricket" />
                <label for="cricket">Cricket</label>
                <input type="checkbox" id="football" name="hobbies" value="Football" />
                <label for="football">Football</label>
                <input type="checkbox" id="chess" name="hobbies" value="Chess" />
                <label for="chess">Chess</label>
              </div>

              <div class="row mb-3">
                <div class="col">
                  <input type="password" class="form-control" id="input_pw" name="password" placeholder="Password" required />
                </div>
              </div>

              <button class="w-100 btn btn-lg btn-primary ut-red" type="submit" onclick="checkForm()">
                Submit
              </button>
              <hr />
            </form>

          </div>
        </div>
      </div>
    </main>

    <!-- FOOTER -->

	<jsp:include page="footer.jsp"></jsp:include>

    <!-- Bootstrap의 JS -->
    <script src="${pageContext.request.contextPath}/public/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
