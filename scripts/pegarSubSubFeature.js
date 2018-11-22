$(document).ready(function(){
	$("select.subfeature").change(function() {
		thisSubfeature=$(this);
		selectedSubFeature=$(thisSubfeature).children("option").filter(":selected").text();
		$.ajax({
			type: "POST",
			url:"retornaSubSubFeature.php",
			data:{subfeature : selectedSubFeature},
			success:function(result){
				$(thisSubfeature).parent().children("select.subsubfeature").html(result);
			}
		});
	});
});