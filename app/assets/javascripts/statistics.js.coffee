# encoding: utf-8
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  searchDOM=$(".formBase")
  $("#addCond").click ->
    incLen++
    uniqueID++
    incTab = $('<li id="tab'+uniqueID+'"><a href="#'+(uniqueID)+'" data-toggle="tab"><input name="name[]" value="条件'+uniqueID+'", size="10"><i class="glyphicon-remove glyphicon" id="close'+uniqueID+'"></i></a></li>')
    incIns = $('<div class="tab-pane" id="'+uniqueID+'"></div>')
    incIns.append searchDOM.children(":not(:first)").clone()

    $("#condTab").append incTab
    $("#condCont").append incIns
    $("#paramnum").val(incLen)

    $("#close"+incLen).click ->
      n=$(this).attr("id").charAt(5)
      $("#"+n).remove()
      $("#tab"+n).remove()
      incLen--
      $("#paramnum").val(incLen)

  incLen=uniqueID=parseInt $("#paramnum").val()
  for i in [0..incLen-1]
    $("#close"+(i+1)).click ->
      n=$(this).attr("id").charAt(5)
      $("#"+n).remove()
      $("#tab"+n).remove()
      incLen--
      $("#paramnum").val(incLen)
  $("#condCont div:first-child").addClass "active"
  $("#condTab > li:eq(1)").addClass "active"
