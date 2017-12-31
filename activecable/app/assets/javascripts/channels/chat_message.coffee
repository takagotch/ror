

  received: (data) ->
    $('#chat_messages').append '<div>' + data['user_name'] + ': ' + data['message'] + '</div>'
