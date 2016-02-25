  // This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require s3_direct_upload
//= require_tree .

$(document).ready(function() {
  $("div.username a").on("click", function(event) {
    event.preventDefault();
    var conversationUrl = $(this).attr("href")
    var request = $.ajax({
      method: "get",
      url: conversationUrl
    });
    request.done(function(responseData){
      $(".big-container").html(responseData)
    });
  });

  $("div.big-container").on("click", "input.message-button", function(event){
    event.preventDefault();
    if ($("textarea#message_body").val() !== "") {
      var details = $("textarea#message_body").val();
      var newMessageUrl = $(this).closest("form").attr("action")

      $.ajax({
        method: "post",
        url: newMessageUrl,
        details: details
      });
      // var request = $.ajax({
      //   method: "get",
      //   url: newMessageUrl
      // });
      // request.done(function(responseData){
      //   $(".big-container").html(responseData)
      // });
    }

  });
});

