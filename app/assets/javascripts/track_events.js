$(function() {
	$('#track_event_date').fdatepicker({
		format: 'mm/dd/yyyy' });
});

$(function() {
	$(document).on('click', '#confirm-delete', function(event) {
		return confirm('Are you absolutely sure you want to delete everything?!?');
	});
});
