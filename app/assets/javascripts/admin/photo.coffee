# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
$(document).ready ->

  $('.picture').mouseenter ->
    $(this).find('span').css 'display', 'block'
    return

  $('.picture').mouseleave ->
    $(this).find('span').css 'display', 'none'
    return

  $('.delete-image').click ->
    if window.confirm('Es-tu sûre?')
      parent = $(this).parent()
      id = parent.attr('image-id')
      $.ajax '/admin/photo/' + id + '/destroy',
        success: (data) ->
          parent.remove()
          return
        error: (data) ->
          if data.status == 200
            parent.remove()
          else
            alert("Une erreur s'est produite....")
          return
  return



return