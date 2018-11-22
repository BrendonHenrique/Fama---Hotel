$(document).ready(function(){
	$(".btRemover").click(function() {
		$(this).parents(".divLinha").remove();
	});
});