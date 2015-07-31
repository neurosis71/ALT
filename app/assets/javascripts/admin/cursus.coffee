# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $(".datepicker").datepicker(
    dateFormat: "MM yy",
    changeMonth: true,
    changeYear: true,
    showButtonPanel: true,
    onClose: getValue(dateText, inst)
  );

  getValue = (dateText, inst) ->
    month = $('#ui-datepicker-div .ui-datepicker-month :selected').val()
    year = $('#ui-datepicker-div .ui-datepicker-year :selected').val()
    $(this).datepicker 'setDate', new Date(year, month, 1)
    return