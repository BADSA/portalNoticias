$(document).ready(function () {

  var home = 0;

  $.ajax({
    method: "get",
    url: "/posts",
    async: false,
    data : { categoryID : home }
    //data: {product: {name:"Un saludo para el otro james", price: 9999, description:"Que risa con jaime"} }

  }).done(function(data){
    $(".posts-list").html(data);
  });

  $('.category').click(function () {
    var catID = $(this).attr("value");
    $.ajax({
      method: "get",
      url: "/posts",
      data : { categoryID : catID }
    }).done(function(data){
      $(".posts-list").html(data);
    });
  });

  
});