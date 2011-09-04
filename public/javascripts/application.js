// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
  setInterval( function() {
    $.getScript("/messages/message_table.js");
  }, 60000 );
});
