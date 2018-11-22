window.onload = function() {
    var fileInput = document.getElementById('btCarregarTexto');
    var fileDisplayArea = document.getElementById('texto');
    var divListaArquivos = document.getElementById('divListaArquivos');
    //for every file...

    var loadFile = function(newFile) {
        var reader = new FileReader();
        reader.onload = function(e) {
            fileDisplayArea.value = reader.result;
            $('#texto').html(reader.result);
            $.ajax({
                type: "POST",
                url: "carregaArquivo.php",
                data: {
                    arquivo: fileDisplayArea.value
                },
                beforeSend: function() {
                    showSpinner("divAnotacao");
                },
                success: function(result) {
                    $("div#divAnotacao").html(result);
                    hideSpinner();
                },
                complete: function() {
                    hideSpinner();
                }
            });
            $.ajax({
                type: "POST",
                url: "retornaListas.php",
                data: {
                    arquivo: fileDisplayArea.value
                },
                success: function(result) {
                    listas = jQuery.parseJSON(result);                       
                    if (listas['features'] != null && listas['features'] != undefined) {
                        listaFeatures = jQuery.parseJSON(listas['features']);
                        for(i=0;i<listaFeatures.length;i++){
                            var feature=listaFeatures[i];  
                            var re = new RegExp(feature,"i");
                            $("#texto").html(function (_, html) {return html.replace(re,"<b class='featureS'>"+feature+"</b>")});
                        }
                    }
                    if (listas['subfeatures'] != null && listas['subfeatures'] != undefined) {
                        listaSubFeatures = jQuery.parseJSON(listas['subfeatures']);
                            for(i=0;i<listaSubFeatures.length;i++){
                                var subfeature=listaSubFeatures[i]; 
                            var re = new RegExp(subfeature,"i");
                            $("#texto").html(function (_, html) {return html.replace(re,"<b class='subfeatureS'>"+subfeature+"</b>")});
                        }
                    }
                    if (listas['subsubfeatures'] != null && listas['subsubfeatures'] != undefined) {
                        listaSubSubFeatures = jQuery.parseJSON(listas['subsubfeatures']);
                            for(i=0;i<listaSubSubFeatures.length;i++){
                            var subsubfeature=listaSubSubFeatures[i]; 
                            var re = new RegExp(subsubfeature,"i");
                            $("#texto").html(function (_, html) {return html.replace(re,"<b class='subsubfeatureS'>"+subsubfeature+"</b>")});
                        }
                    }
                },
            });
        }
        reader.readAsText(newFile, "utf8");
        listFiles();
    }

    function clearBox(elementID)
    {
        document.getElementById(elementID).innerHTML = "";
    }

    function listFiles(){
        clearBox('divListaArquivos');
        for (var x = 0; x < fileInput.files.length; x++) {
            var outerDiv = document.createElement('div');
            var node = document.createElement('a');
            var textnode = document.createTextNode(fileInput.files[x].name); 
            node.href = '#';
            outerDiv.appendChild(node);
            node.appendChild(textnode);
            divListaArquivos.appendChild(outerDiv);
            var brnode = document.createElement('br');
            divListaArquivos.appendChild(brnode);
            node.onclick = function() {
                parent_ = this.parentNode;
                parent_.style.backgroundColor = "red"
                code = chageFile(this.innerHTML);
                eval(code);   
            }
        }
    }

    var chageFile = function (newFile) {
        for (var x = 0; x < fileInput.files.length; x++) {
            file = fileInput.files[x]
            name = file.name
            if (name == newFile){
                loadFile(file)
            }
        }
        listFiles();
    }
    fileInput.addEventListener("change", function(e) {
        var file = fileInput.files[0];
        var textType = /text.*/;
        if (file.type.match(textType)) {
            loadFile(file)
        } else {
            fileDisplayArea.value = "Arquivo não suportado";
        }
    });
}
