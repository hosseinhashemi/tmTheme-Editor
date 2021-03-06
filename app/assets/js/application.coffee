#= require vendors/sugar-1.3.5.js
#= require vendors/xregexp.js
#= require vendors/jquery-1.8.2.js
#= require vendors/jquery.cookie.js
#= require vendors/FileSaver.js
#= require vendors/tinycolor.js
#= require vendors/angular-1.0.2.js
#= require vendors/bootstrap/bootstrap-dropdown.js

#= require_tree lib
#= require_tree directives
#= require_tree controllers


$ ->

  uploadBtn = $("#upload-btn")
  uploadInput = $("#files")
  uploadInput.mouseenter -> uploadBtn.addClass("hover")
  uploadInput.mouseleave -> uploadBtn.removeClass("hover")
  uploadInput.click ->
    uploadBtn.addClass("active")
    delayed = ->
      uploadBtn.removeClass("hover").removeClass("active")
    setTimeout(delayed,1200)
