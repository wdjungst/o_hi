$ ->
  $('#add_task').bind 'click', (e) ->
    e.preventDefault()
    $('#add_task_modal').modal('toggle')
