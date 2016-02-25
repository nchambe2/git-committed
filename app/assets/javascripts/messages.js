this.MessagePoller = {
  poll: function() {
    return setTimeout(this.request, 1000);
  },
  request: function() {
    return $.ajax({
      type: "GET",
      url: $('.messages_container').data("path"),
      dataType: "script",
      data: {
        data: $('.message').last().data('id')
      }
    });
  }
};

jQuery(function() {
  if ($('.big-container').length > 0) {
    return MessagePoller.poll();
  }
});
