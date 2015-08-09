# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

pickdate = ->
  
  $("#datepicker1").datepicker(
    format: "yyyy-mm-dd",
    autoclose: true
)

  $("#datepicker2").datepicker(
    format: "yyyy-mm-dd",
    autoclose: true
)
  return

$(document).ready(pickdate)
$(document).on('page:load', pickdate)