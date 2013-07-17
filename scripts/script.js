$(".js-go").tap(function(){
	$(".js-blur-target").toggleClass('blur');
	$("#loading").toggleClass('-hide')
	setTimeout('screenSwitch()', 2000)
});

function screenSwitch() {
	$("#loading").toggleClass('-hide')
	$(".js-blur-target").toggleClass('blur');
	$("#main").toggleClass("-hide");
	$("#route_select").toggleClass("-hide");
}