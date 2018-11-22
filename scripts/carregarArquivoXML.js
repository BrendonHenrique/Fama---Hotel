window.onload = function () {
	var fileInput = document.getElementById("carregaXML");
	var fileDisplayArea = document.getElementById("texto");

	fileInput.addEventListener("change", function (e) {
		var file = fileInput.files[0];
		var textType = /xml.*/;

		if (file.type.match(textType)) {
			var reader = new FileReader();

			reader.onload = function (e) {
				fileDisplayArea.value = reader.result;
			}

			reader.readAsText(file, "UTF-8");
			
		} else {
			fileDisplayArea.value = "Arquivo n‹o suportado"
		}
	});
}
