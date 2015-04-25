$.fn.enterKey = function (fnc) {
    return this.each(function () {
        $(this).keypress(function (ev) {
            var keycode = (ev.keyCode ? ev.keyCode : ev.which);
            if (keycode == '13') {
                fnc.call(this, ev);
            }
        })
    })
};

var checkString = function(content){

	for (c in content){
		if (content.charAt(c) != '' && content.charAt(c)!='\n' && content.charAt(c) != ' ') return true;
	}
	return false;
};

$(document).ready(function(){
	$('#postModal').modal({
		backdrop:true,
		show: false
	});

	$('.clickable-link').on('click',function(){
		var postId = $(this).attr('id');
		$.ajax({
			url: 'posts/'+postId,
			async:false
		}).done(function(response){
				$('#postModal').html(response);
				$('#postModal').modal('show');
				$(".post-img-slider").owlCarousel({
					slideSpeed : 300,
					autoPlay: 3000,
					responsive: true,
			      	paginationSpeed : 400,
			      	singleItem:true,
			      	itemsScaleUp: true
				});
				return false;
		});
	});

	$('#postModal').on('click','#submit-comment',function(){
		var commentContent = $('#comment-content').val();
		var postId = $(this).attr('value');
		if (checkString(commentContent)){
			$.ajax({
				method: 'post',
				url: '/comments',
				async: false,
				data: {comment: commentContent, postId: postId},
			}).done(function(response){
				var user = $('#user-name').text();
				var commentContent = $('#comment-content').val();
				$('#post-comment-list').append('<li class=\'comment-element\'><p></i><span>'+user+' </span>'+commentContent+'</p><span>'+response+'</li>');
				$('#comment-content').val('');
				var numComments = $('#li-num-comments-'+postId.toString()).text();
				$('#li-num-comments-'+postId.toString()).text(parseInt(numComments)+1);
			}).fail(function(){
				alert ('Something went wrong');
			});
		}else{
			alert('El comentario debe tener algun contenido');
		}
	});

	$('#postModal').on('click','#vote-unvote-post',function(){
		var action = $('#vote-unvote-post').attr('value');
		var postId = $('#post-id').text();
		var numVotes = $('#li-num-votes-'+postId.toString()).text();
		console.log(action);
		$.ajax({
				method: 'post',
				url: '/vote',
				async: false,
				data: {actionType: parseInt(action), postId: parseInt(postId)}
			}).done(function(response){
				console.log(response);
				if (action == 1){
					$("#vote-unvote-post").html("Remover voto");
					$('#vote-unvote-post').attr('value',2);
					$('#li-num-votes-'+postId.toString()).text(parseInt(numVotes)+1);
				}else{
					$("#vote-unvote-post").html("Dar voto");
					$('#vote-unvote-post').attr('value',1);
					$('#li-num-votes-'+postId.toString()).text(parseInt(numVotes)-1);
				}
				
			});

	});

	$('#postModal').on('click','.destroy-comment',function(){
		alert('si funciona');
		var commentId = $(this).attr('value');
		var $ielement = $(this);
		var postId = $('#post-id').text();

		$.ajax({
				method: 'post',
				url: '/uncomment',
				async: false,
				data: {id: commentId,postId: postId},
				success: function(){
					alert('success');
				} 
			}).done(function(response){
				alert(response);
				$ielement.closest('li').remove();
				var numComments = $('#li-num-comments-'+postId.toString()).text();
				$('#li-num-comments-'+postId.toString()).text(parseInt(numComments)-1);

			});

	});
});


