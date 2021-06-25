$(document).ready(function () {
	show_task_details = (e) =>{
		let task_id = $(e).attr('id')
		jQuery.ajax({
			type: 'get',
			url: '/show_task_details',
			data: {"task_id": task_id}
		});
	}

	change_color = (e) =>{
		$(".filter-day").each(function(){
			// Test if the div element is empty
			$(this).removeClass("text-primary");
			$(this).addClass("text-secondary");
		});
		$(e).removeClass("text-secondary");
		$(e).addClass("text-primary");
	}
	
});
