function salvarAnotacoes(){
    erros=0;
	$("div.divLinha").each(
		function(){
			texto=$("#texto").val();
			feature=$(this).children("select.feature").children("option").filter(":selected").text();
			subfeature=$(this).children("select.subfeature").children("option").filter(":selected").text();
			subsubfeature=$(this).children("select.subsubfeature").children("option").filter(":selected").text();
			polarity=$(this).children("select.polarity").children("option").filter(":selected").text();
			exim=$(this).children("select.exim").children("option").filter(":selected").text();
			term=$(this).children(".term").val();
			$.ajax({
				type: "POST",
				url:"salvaAnotacoes.php",
				data:{
					textoVal: texto,
					featureVal: feature,
					subfeatureVal : subfeature,
					subsubfeatureVal : subsubfeature,
					polarityVal : polarity,
					eximVal : exim,
					termVal : term
				},
				success:function(result){
					console.log("Status:"+result);  
				},
				error:function(result){
					erros++;
				}
			});
		}
	);
	if (erros>0){
	  alert("Houve erro ao salvar os dados. Por favor, repita o processo.");
	}
	else {
	  alert("Todos os dados foram salvos com sucesso.");
	}
	  
}
