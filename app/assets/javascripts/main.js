$(document).ready(function () {
	$('h1').click(function () {
		$.ajax({
		method: "post",
		url: "/products",
		data: {post: {id:"Un saludo para el otro james", price: 9999, description:"Que risa con jaime"}}
	}).done(function(data){
			alert (data);
		});
	});
});