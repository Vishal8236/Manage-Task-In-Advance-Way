$(document).ready(function () {
	$(".t_status").bind('change', function(){
		if (this.checked){
			let task_id = $(this).attr('id')
			console.log(task_id)
			jQuery.ajax({
				type: 'get',
				url: '/update_task_status',
				data: {"task_status": 1,"task_id": task_id}
			});
		}
		else {
			let task_id = $(this).attr('id')
			console.log(task_id)
			jQuery.ajax({
				type: 'get',
				url: '/update_task_status',
				data: {"task_status": 0,"task_id": task_id}
			});
		}
	});
});