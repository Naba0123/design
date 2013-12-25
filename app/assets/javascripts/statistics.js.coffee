# encoding: utf-8
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
searchDOM='<input type="text" name="q[][name_cont]">'+
	'<input type="text" name="q[][address_cont]">'
$ ->
  incLen=1
  $(".add").click ->
    incLen++
    incTab.push $('<li><a href="#'+(incTab.length+1)+'" data-toggle="tab">Cond '+incLen+'</a></li>')
    incIns.push $('<div class="tab-pane" id="'+incLen+'"></div>')
    incIns[incLen-1].append searchDOM

    $(".nav").append incTab[incLen-1]
    $(".tab-content").append incIns[incLen-1]

    $("#paramnum").val(incTab.length)
  incTab=[]
  incIns=[]

  incIns[0] = $('<div class="tab-pane active" id="1"></div>')
  incIns[0].append searchDOM
  incTab[0] = $('<li class="active"><a href="#1" data-toggle="tab">Cond 1</a></li>')
  $(".nav").append incTab[0]
  $(".tab-content").append incIns[0]
  $("#paramnum").val(1)
