$(document).ready(function(){
	$('#postModal').modal({
		backdrop:true,
		show: false
	});
	$(".owl-carousel").owlCarousel({
		slideSpeed : 300,
      	paginationSpeed : 400,
      	singleItem:true
	});
	//Turbolinks.visit('posts');
	$('.clicable-link').click(function(){
		var id = $(this).attr('id');
		$('#postModal').modal('show');
		$.ajax({
			url: 'posts/'+id+'.json',
			success: function(response){
				//alert(response);
				$('#post-modal-title').html(response.title);
				$("#post-description").html(response.description);
				$('#post-content').html(response.content);
				return false;
			}
		})
		//alert (id);
	});
});