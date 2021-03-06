$(document).on 'turbolinks:load', ->
  $('#subject-input').change (e) ->
    e.stopImmediatePropagation()
    $('#categories-list').html("")
    $('#category-input').html("")
    subject_name = $('#subject-input').val()
    $.ajax "/admin/getcategories/" + subject_name,
            type: "GET"
            datatype: "json"
            error: (jqXHR, textStatus, errorThrown) ->
                  console.log "Error getting categories"
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
    