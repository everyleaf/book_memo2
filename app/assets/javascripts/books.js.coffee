# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

count = 0
$("#add-memo").on("click", () ->
  $('#memo').append($('<div />').addClass('field')).append($('<textarea />').attr({
    'cols': '40',
    'name': "book[memo_attributes][#{count++}][value]",
    'rows': '5'
  }))
  return false

)
