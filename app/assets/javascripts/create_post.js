$('#input-body').keyup(function(e) {
    var len = $(this).val().length;
    var remain = 5000 - len;
    $("#body-length").text(remain);
    if(remain == 0) $("#body-length").html("<label style ='color:red'>"+remain+"</label>");
});

$('#input-summary').keyup(function(e) {
    var len = $(this).val().length;
    var remain = 450 - len;
    $("#summary-length").text(remain);
    if(remain == 0) $("#summary-length").html("<label style ='color:red'>"+remain+"</label>");
});