@MessagePoller =
  poll: ->
    setTimeout @request, 2000

  request: ->
    $.ajax({
      type: "GET",
      url: $('#messages_container').data("path"),
      dataType: "script",
      data: {data: $('.message').last().data('id')}
    })

jQuery ->
  if $('#messages_container').length > 0
    MessagePoller.poll()