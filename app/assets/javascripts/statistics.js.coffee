# encoding: utf-8
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  searchDOM=$(".formBase")
  $("#addCond").click ->
    incLen++
    incTab.push $('<li><a href="#'+(incLen)+'" data-toggle="tab">条件 '+incLen+'</a></li>')
    incIns.push $('<div class="tab-pane" id="'+incLen+'"></div>')
    incIns[incLen-1].append searchDOM.children(":not(:first)")

    $("#condTab").append incTab[incLen-1]
    $("#condCont").append incIns[incLen-1]
    $("#paramnum").val(incLen)

  incTab=[]
  incIns=[]

  incLen=$("#paramnum").val()
  for i in [0..incLen-1]
    incIns[i] = ""
    incTab[i] = $('<li><a href="#'+(i+1)+'" data-toggle="tab">条件 '+(i+1)+'</a></li>')
    $("#condTab").append incTab[i]
  $("#condCont div:first-child").addClass "active"
  $("#condTab > li:eq(1)").addClass "active"
