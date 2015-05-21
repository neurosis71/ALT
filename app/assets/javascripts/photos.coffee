# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

# All images need to be loaded for this plugin to work so
# we end up waiting for the whole window to load in this example
# Here we apply the actual CollagePlus plugin

collage = ->
  $('.Collage').removeWhitespace().collagePlus
    'fadeSpeed': 2000
    'targetHeight': 250
    'effect' : 'effect-3'
    'allowPartialLastRow' : true
  return

$(window).load ->
  $(document).ready ->
    collage()
    $('.Collage').collageCaption()
    return
  return
# This is just for the case that the browser window is resized
resizeTimer = null
$(window).bind 'resize', ->
  # hide all the images until we resize them
  $('.Collage .Image_Wrapper').css 'opacity', 0
  # set a timer to re-apply the plugin
  if resizeTimer
    clearTimeout resizeTimer
  resizeTimer = setTimeout(collage, 200)
  return