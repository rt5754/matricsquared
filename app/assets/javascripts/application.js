// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery3
//= require jquery.turbolinks
//= require popper
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .
//= require turbolinks

/* global $ */

/* All javascripts not belonging to a specific controller/model */


$(document).ready(ready());
$(document).on('turbolinks:load', ready());
$(document).on('turbolinks:ready', ready());


function ready(){
  
  $('#nav-collapse-toggler').click(function() {
    if ($(this).attr("aria-expanded") == "false") {
      $('#nav-collapse-toggler-icon').removeClass("fa-bars");
      $('#nav-collapse-toggler-icon').addClass("fa-times");
    } else if ($(this).attr("aria-expanded") == "true") {
      $('#nav-collapse-toggler-icon').removeClass("fa-times");
      $('#nav-collapse-toggler-icon').addClass("fa-bars");
    }
  });
  
  $('.counter').counterUp({
    time: 1500
  });
  
  $('#learn-more-button').click(function(){
    $('html, body').animate({ 
      scrollTop: $("#how-it-works").offset().top
    }, 200);
  });
  
}