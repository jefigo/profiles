$(document).on 'ready page:load', ->
  $(".scroll-pane").jScrollPane()

  $('.span').hover ->
  	$('#flip-image').css "visibility", "visible"

  $('.span').mouseleave ->
  	$('#flip-image').css "visibility", "hidden"

  $('.span').click ->
    if $('#user-back-image').css('display') is "none"
  	  $('#user-back-image').css 'display', 'block'
    else
      $('#user-back-image').css 'display', 'none' 	

   $('#badges-ribon ul a').tooltip()