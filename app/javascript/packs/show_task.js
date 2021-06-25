$(document).ready(function () {
	$('#day-filter > div > a').click(function (e) {
		console.log("hello in show tassasassk")
		$('#day-filter > div > a').removeClass('text-primary');
		$(this).addClass('text-primary');
	});

	show_task_details = (e) =>{
		let task_id = $(e).attr('id')
		jQuery.ajax({
			type: 'get',
			url: '/show_task_details',
			data: {"task_id": task_id}
		});
	}

	
});
