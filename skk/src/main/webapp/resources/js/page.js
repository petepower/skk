var obj = parent.document.getElementById("frame_id_1");
if (obj) {
	setInterval(function() {
		if (obj.height != $('#main').height() + 210) {
			obj.height = $('#main').height() + 210;
		}
	}, 200)
}

window.onresize = function() {
	if (obj)
		obj.height = $('#main').height() + 210;
}

$(function() {
	if (!parent.document.getElementById("sidebar"))
		return false;

	$("#page-wrap").height(parent.document.getElementById("sidebar").clientHeight);
	$("#page-wrap").mCustomScrollbar({
		theme : "minimal-dark"
	});

	$('.modal').height(parent.document.getElementById("sidebar").clientHeight);

	$('.modal').on('shown.bs.modal', function(e) {
		$("#page-wrap").mCustomScrollbar("disable");
	})

	$('.modal').on('hidden.bs.modal', function(e) {
		$("#page-wrap").mCustomScrollbar("update");
	})
})