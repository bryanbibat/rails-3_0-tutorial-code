// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
  $("li").css("color", "blue");
  $("li").mouseover(function () {
    $(this).css("color", "red");
  }).mouseout(function() {
    $(this).css("color", "black");
  });
});
