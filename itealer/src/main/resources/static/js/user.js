let index = {
   init: function() {
      // 버튼을 눌렀을때, save함수를 호출한다.
      $("#btn-save").on("click", ()=>{ // function(){} 을 ()=>{}로 변경, this를 바인딩 하기 위해
         this.save();
      }) ;
      $("#btn-login").on("click", ()=>{ // function(){} 을 ()=>{}로 변경, this를 바인딩 하기 위해
         this.login();
      }) ;
   
   },
   
   save: function() {
      let data = {
         username: $("#username").val(),
         password: $("#password").val(),
         email: $("#email").val()
      };
      
      // console.log(data); 해당 데이터 로그를 콘솔에 불러오기
      
      // ajax 통신을 이용하여 3개의 데이터를 json으로 변경하여 insert 요청
      // ajax 호출시 default가 비동기 호출
      // ajax가 통신을 성공하고 서버가 json을 리턴해주면 자동으로 자바 오브젝트로 변환
      $.ajax({ // object : 회원가입 수행 요청
         type: "POST", // 어떤 메소드 방식?
         url: "/auth/joinProc", // 어느 주소로 호출?
         data: JSON.stringify(data), // save의 data를 JSON파일로 변환하여 Java에게 전달 - http body 데이터
         contentType: "application/json; charset=utf-8", // 데이터의 mime 타입
         dataType: "json" // 요청에 대한 응답이 왔을 때 해당 응답의 타입 - 응답의 결과가 아래의 파라미터로 전달
      }).done(function(resp){ // 응답이 정상일때
         alert("회원가입이 완료되었습니다.");
         // console.log(resp);
         location.href="/";
      }).fail(function(error){ // 응답이 실패 할때
         alert(JSON.stringify(error));
      });
      
   }
}

index.init();