window.onload = function () {
	var fileInput = document.getElementById("carregaTXT");
	var fileDisplayArea = document.getElementById("texto");

	fileInput.addEventListener("change", function (e) {
		var file = fileInput.files[0];
		var textType = /text.*/;
		
		if (file.type.match(textType)) {
			var reader = new FileReader();
			
			reader.onload = function (e) {
				fileDisplayArea.value = reader.result;
				$.ajax({
					type : "POST",
					url : "processaArquivo.php",
					data : {
						arquivo : fileDisplayArea.value
					},
					success : function (result) {
						$('div#divAnotacao').append(result);
					}
				});
			}
			
			reader.readAsText(file, "UTF-8");

		} else {
			fileDisplayArea.value = "Arquivo n‹o suportado"
		}
	});
}
