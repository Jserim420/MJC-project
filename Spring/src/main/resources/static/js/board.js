let index = {
	init: function() {
		// 버튼을 눌렀을때, save함수를 호출한다.
		$("#btn-save").on("click", ()=>{ // function(){} 을 ()=>{}로 변경, this를 바인딩 하기 위해
			this.save();
		}) ;
		
		$("#btn-delete").on("click", ()=>{
			this.deleteById();
		}) ;
		
		$("#btn-update").on("click", ()=>{
			this.update();
		}) ;
	
	},
	
	save: function() {
		let data = {
			title: $("#title").val(),
			content: $("#content").val(),
		};
	
		$.ajax({ 
			type: "POST", 
			url: "/api/board", 
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8", 
			dataType: "json" 
		}).done(function(resp){
			alert("글쓰기가 완료되었습니다.");
			location.href="/";
		}).fail(function(error){ 
			alert(JSON.stringify(error));
		});
		
	},
	
	deleteById: function() {
		let id = $("#id").text();
		
		$.ajax({ 
			type: "DELETE", 
			url: "/api/board/"+id,
			dataType: "json" 
		}).done(function(resp){
			alert("삭제가 완료되었습니다.");
			location.href="/";
		}).fail(function(error){ 
			alert(JSON.stringify(error));
		});
		
	},
	
	update: function() {
		let id = $("#id").val();
		
		let data = {
			title: $("#title").val(),
			content: $("#content").val()
		};
		
		$.ajax({ 
			type: "PUT", 
			url: "/api/board/"+id, 
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8", 
			dataType: "json" 
		}).done(function(resp){
			alert("글수정이 완료되었습니다.");
			location.href="/";
		}).fail(function(error){ 
			alert(JSON.stringify(error));
		});
		
	}
	
}

index.init();