# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#subject-input').change ->
    console.log "Subject changed"
    $('#categories-list').html("")
    $('#category-input').html("")
    subject_name = $('#subject-input').val()
    console.log "Get categories for " + subject_name
    $.ajax "/admin/getcategories/" + subject_name,
            type: "GET"
            datatype: "json"
            error: (jqXHR, textStatus, errorThrown) ->
                  alert "Your search result came up empty. Please try again, or refresh the page."
            success: (data, textStatus, jqXHR) ->
                  showCategories(data)
    return
  return
  
showCategories = (categories) ->
  if categories.length != 0
    for i in [0..categories.length-1]
      console.log categories[i].name
      $('#categories-list').append '<li>' + categories[i].name + '</li>'
      $('#category-input').append $('<option>',
        value: categories[i].id
        text: categories[i].name)
  else
    $('#categories-list').append "No categories yet"  