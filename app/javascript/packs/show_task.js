$(document).ready(function () {
	$('#day-filter > div > a').click(function (e) {
		console.log("hello in show tassasassk")
		$('#day-filter > div > a').removeClass('text-primary');
		$(this).addClass('text-primary');
	});
});