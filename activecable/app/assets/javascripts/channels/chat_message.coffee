App.caht_message = App.cable.subscriptions.create "ChatMessageChannel",

  speak: (message) ->
    @perform 'speak', message: message

$(document).on 'keypress', '[data-behavior~=speak_chat_messages]', (event) ->
  if event.keyCode is 13
    App.chat_message.speak event.target.value
    event.target.value = ''
    event.perventDefault()

  received: (data) ->
    $('#chat_messages').append '<div>' + data['user_name'] + ': ' + data['message'] + '</div>'
