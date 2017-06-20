$(function() {
	$('#track_event_date').fdatepicker({
		format: 'mm/dd/yyyy' });
});

$(function() {
	$(document).on('click', '#confirm-delete', function(event) {
		return confirm('Are you absolutely sure you want to delete everything?!?');
	});
});

$(function() {
	category = $('#track_event_category').val();
	if (category == 'CS') {
		$('#cs-fields').show();
	} else {
		$('#cs-fields').hide();
	}
	$('#track_event_category').change(function(event) {
		if (this.value == 'CS') {
			$('#cs-fields').show();
		} else {
			$('#cs-fields').hide();
		}
	});
});
