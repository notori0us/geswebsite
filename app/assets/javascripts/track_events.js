// add a date formatter
$(function() {
  $('#track_event_date').fdatepicker({
    format: 'mm/dd/yyyy' });
});

// the big delete button
$(function() {
  $(document).on('click', '#confirm-delete', function(event) {
    return confirm('Are you absolutely sure you want to delete everything?!?');
  });
});

// hide/show CS only fields
$(function() {
  category = $('#track_event_category').val();
  if ((category == 'CS') || (category == 'CSGES')) {
    $('#cs-fields').show();
  } else {
    $('#cs-fields').hide();
  }

  $('#track_event_category').change(function(event) {
    category = $('#track_event_category').val();
    if ((category == 'CS') || (category == 'CSGES')) {
      $('#cs-fields').show();
    } else {
      $('#cs-fields').hide();
    }
  });
});
