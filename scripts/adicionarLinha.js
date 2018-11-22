$(document).ready(function(){
	$(".btAdicionar").click(function() {
		$.ajax({
				url:"processaLinhas.php",
				success:function(result){
				$("div#divAnotacaoImplicita").append(result);
			}});
	});
});