let index = {
	init: function() {
		// 버튼을 눌렀을때, save함수를 호출한다.
		$("#btn-save").on("click", () => { // function(){} 을 ()=>{}로 변경, this를 바인딩 하기 위해
			this.save();
		});

		$("#btn-delete").on("click", () => {
			this.deleteById();
		});

		$("#btn-update").on("click", () => {
			this.update();
		});

		$("#btn-reply-save").on("click", () => {
			this.replySave();
		});

	},

	save: function() {
		let data = {
			title: $("#inputUnderTitle").val(),
			content: $("#inputUnderContent").val(),
		};

		$.ajax({
			type: "POST",
			url: "/api/board",
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("글쓰기가 완료되었습니다.");
			location.href = "/board/pageForm";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});

	},

	deleteById: function() {
		let id = $("#id").val();

		$.ajax({
			type: "DELETE",
			url: "/api/board/" + id,
			dataType: "json"
		}).done(function(resp) {
			alert("삭제가 완료되었습니다.");
			location.href = "/board/pageForm";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});

	},

	update: function() {
		let id = $("#id").val();

		let data = {
			title: $("#inputUnderTitle").val(),
			content: $("#inputUnderContent").val()
		};

		$.ajax({
			type: "PUT",
			url: "/api/board/" + id,
			data: JSON.stringify(data),
			contentType: "application/json; charset=utf-8",
			dataType: "json"
		}).done(function(resp) {
			alert("글수정이 완료되었습니다.");
			location.href = "/board/pageForm";
		}).fail(function(error) {
			alert(JSON.stringify(error));
		});

	},
		
		replySave: function(){
			let data = {
					userId: $("#userId").val(),
					boardId: $("#boardId").val(),
					content: $("#reply-content").val()
			};
			
			$.ajax({ 
				type: "POST",
				url: `/api/board/${data.boardId}/reply`,
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				dataType: "json"
			}).done(function(resp){
				alert("댓글작성이 완료되었습니다.");
				location.href = `/board/${data.boardId}`;
			}).fail(function(error){
				alert(JSON.stringify(error));
			}); 
		},
		
		replyDelete : function(boardId, replyId){
			$.ajax({ 
				type: "DELETE",
				url: `/api/board/${boardId}/reply/${replyId}`,
				dataType: "json"
			}).done(function(resp){
				alert("댓글삭제 성공");
				location.href = `/board/${boardId}`;
			}).fail(function(error){
				alert(JSON.stringify(error));
			}); 
		},
}

index.init();