$(document).ready(function () {
  var home = 'Home';
  filterByCategory(home);


  $('.category').click(function (e) {
    var catId = $(this).attr("id");
    console.log(catId);
    filterByCategory(catId);
  });


  function filterByCategory(catId){
    $.ajax({
      method: "get",
      url: "/posts",
      async:false,
      data : { category : catId }
    }).done(function(data){
      $(".posts-list").html(data);
    });
  }




});