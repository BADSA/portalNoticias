$(document).ready(function () {
  var home = 'Home';
  filterByCategory(home);
  $('#search-textbox').hide();
  $(".active").removeClass("active");

  $(".main").height($(window).height()-70);

  $('.category').click(function (e) {
    var catId = $(this).attr("id");
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


  $('.filter-status').click(function () {
    var id = $(this).attr("href");
    var status2 = $(this).attr("value");
    $.ajax({
      method: "get",
      url: "/users/post_status",
      async:false,
      data:{status:status2}
    }).done(function(data){
      $(id).html(data);
    });
  });

  $('#search-btn').click(function(){
    var $textbox = $('#search-textbox');
    if ($textbox.is(":visible")){
      $textbox.hide();
      $textbox.val("");
    }else  $textbox.show();
  });


  $('#search-textbox').keypress(function (event) {
      if (event.which == 13) {
        var search_key = $(this).val();
        $.ajax({
          method: "get",
          url: "/posts",
          data: { keywords: search_key },
          async:false
        }).done(function(data){
          $(".posts-list").html(data);
        });
      }
  });



});


$("body").on('click',
  '#reje'
  ,function(){
    $("#justification").show();
});


$("body").on('click',
  '#rejected'
  ,function(){
    var cont = confirm("Esta seguro que desea rechazar?");
    if (!cont) return null;
    var action2 = "rejected";
    var postId = $(this).attr("value"); 
    var texto = $("#justi-textarea").val();
    $.ajax({
      method: "get",
      url: "/manage",
      data:{ acti : action2, id: postId , justification: texto},
      async:false
    }).done(function(data){
      $( "#rejected" ).parentsUntil( ".until-here ").remove();
      //$(".col-md-3").remove();    
    });
});    

$("body").on('click',
  '#accepted'
  ,function(){
  var action2 = "accepted";
  var postId = $(this).attr("value");
  $.ajax({
    method: "get",
    url: "/manage",
    async:false,
    data:{ acti : action2, id: postId }

  }).done(function(data){
    //$("").parents('.panel').hide();
    $( "#accepted" ).parentsUntil( ".until-here ").remove();
    //$(".col-md-3").remove();
    //$(this).unwrap();//closest('li').remove();
  });
});

$("body").on('click',
  '#manage-users',function(){

    var id = $(this).attr("href");

    $.ajax({
      method: "get",
      url: "/makemanager",
      async:false
    }).done(function(data){
      $(id).html(data);
    });
  });
  


  $("body").on("click",
    ".user-element"
    ,function(){
      var admin = "no";
      if ($(this).hasClass("admin")){
        $(this).css({"background-color": "#ccc", "font-size": "100%"});  
        $(this).removeClass("admin");
      }else{
        $(this).css({"background-color": "#666", "font-size": "200%"});
        $(this).addClass("admin");
        admin = "yes";
      }
      var ident = $(this).attr("id");
      var $ele = $(this);
      $.ajax({
        method: "get",
        url: "/rootuser",
        data:{ide : ident , adm:admin},
        async:false
      }).done(function(data){
        $(id).html(data);

      });      
  });