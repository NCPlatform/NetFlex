<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

	<style>
		.card:hover{
			width: 20rem;
		}
	</style>

</head>
<body class="bg-dark">
	
	<div class="container text-light my-5 py-5">
		<h1 class="text-center mt-5">넷플릭스를 시청할 프로필을 선택하세요</h1>
		<div id="nickCard" class="d-flex justify-content-center mt-5 pt-5">
			
		</div>
	</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(function(){
		$.ajax({
			type: 'post',
			url: '/NetFlex/movie/getNickname',
			dataType: 'json',
			success: function(data){
				$.each(data,function(index, items){
					$('<div/>',{
						class: "card bg-transparent",
						seqNick: items.seqNick,
						nickname: items.nickname
					}).append($('<img/>', {
						src: 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgIBwcIBwcHBwcHBwoHBwcHCA8ICQcKFREWFiARExMYHSggGCYlJxMfITEhJSkrLi4uFx8zODMsNygtLisBCgoKDQ0NDg0NDy0ZHxkrKysrKystKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrK//AABEIALABHgMBIgACEQEDEQH/xAAWAAEBAQAAAAAAAAAAAAAAAAAAAQb/xAAVEAEBAAAAAAAAAAAAAAAAAAAAAf/EABcBAQEBAQAAAAAAAAAAAAAAAAABBwX/xAAUEQEAAAAAAAAAAAAAAAAAAAAA/9oADAMBAAIRAxEAPwDegMpd8AAAAAAAAAQAAAAAAAAAAVAAAUAAAAAAAAFQAAAAAAAAAAQAAFAAAAAAAAAEFAQAAAABQAAAAAAAAAAAAAQAAFAABAAARUBUVAURQAFBFAQAAAABQAAAAAAAAAAAQFRQAAAEBBQQAAAFEUAAABRAAAAAFAAAAAAAAAAABAVAFAAAQAAQVAAAUQBQAAFEAAAAAUAAAAAAAAAAAAAEFEAUAABBBUBRFAAAAUEAAAABQAAAAAAAAAAAAAAAAAQFQBRAFEAUQBRAFQAAAAAAFAAAAAAAAAAAAAAABAAAFAQUBAABQEFARRAAAAAAFAAAAAAFRUQAAAAUAAAABAAAABFQAABQAAAAAAFBFQAAAAAAABQAQAAAAAAUQBRAFEAUQBRAFEAUQBUAAAAAAAAAABQAAAQBQEUgAAAAgAAAAAAAAAAAAAAAKCKgAKCAAAKP/9k=',
						'class': 'card-img-top rounded-0'
					})).append($('<div/>', {
						'class': 'card-body'
					}).append($('<p/>',{
						'class': 'card-text text-light text-center fs-2',
						text: items.nickname
					}))).appendTo($('#nickCard'));
					
				});
			},
			error: function(e){
				console.log(e);
			}
		});
	});
	
	$(document).on("click", ".card", function() {
	    $.ajax({
			type: 'post',
			url: '/NetFlex/movie/setNickname',
			data: "seqNick=" + $(this).attr("seqNick") + "&nickname=" + $(this).attr("nickname"),
			dataType: 'json',
			success: function(data){
			},
			error: function(e){
				console.log(e);
			}
		});
	    location.href="/NetFlex/movie/home"
	});
</script>
</body>
</html>