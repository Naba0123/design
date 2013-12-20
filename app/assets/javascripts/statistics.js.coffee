# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  tabIns = $('<li class="active"><a href="#2" data-toggle="tab">2</a></li>')

  incIns = $('<div class="tab-pane active" id="2"></div>')
  incIns.append '<input type="text" name="q[][name_cont]">'
  incIns.append '<input type="text" name="q[][name_cont]">'
  
  $(".nav").append tabIns
  $(".tab-content").append incIns