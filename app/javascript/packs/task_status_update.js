$(document).ready(function () {
	update_task_s = (e) => {
		if (e.checked){
			let task_id = $(e).attr('id')
			jQuery.ajax({
				type: 'get',
				url: '/update_task_status',
				data: {"task_status": 1,"task_id": task_id}
			});
		}
		else {
			let task_id = $(e).attr('id')
			jQuery.ajax({
				type: 'get',
				url: '/update_task_status',
				data: {"task_status": 0,"task_id": task_id}
			});
		}
	}
});