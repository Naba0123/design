# encoding: utf-8
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  incIns=[]
  incIns[0] = $('<div class="tab-pane active" id="1"></div>')
  incIns[0].append '<input type="text" name="q[][name_cont]">'
  incIns[0].append '<input type="text" name="q[][address_cont]">'
  
  incIns[1] = $('<div class="tab-pane" id="2"></div>')
  incIns[1].append '<input type="text" name="q[][name_cont]">'
  incIns[1].append '<input type="text" name="q[][address_cont]">'
  
  $(".nav").append  $('<li class="active"><a href="#1" data-toggle="tab">Cond 1</a></li>')
  $(".nav").append  $('<li><a href="#2" data-toggle="tab">Cond 2</a></li>')
  $(".tab-content").append incIns[0]
  $(".tab-content").append incIns[1]
  $("#paramnum").val(2)