<!DOCTYPE html>
<html>
  <head>
    <!-- Script se segurança das medidas queries funcionarem em IE-->
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">	 
	
	<!-- Esse script foi feito para transformar o hyperlink do guia
	em botão, e assim poder modificar os paddings e borders dele 
    e deixa-lo parecido com o botão salvar ele apenas redireciona para o guia, informando o usuário -->
	
	<script>
	function OpenGuia() {
	alert("Redirecionando para o Guia de Anotação...");
    window.parent.location.href="http://famahotel.tk/Guia.pdf";
	}
	</script>
	
	<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	
    <script src="scripts/jquery.min.js"></script>
    <script src="scripts/spin.min.js"></script>
    <script src="scripts/progressSpinner.js"></script>
    <script src="scripts/carregarArquivo.js"></script>
    <script src="scripts/salvarAnotacoes.js"></script>
    <link rel="stylesheet" href="css/estilo.css">
    <title>FAMA - Ferramenta de Anotação Manual Automatizada</title>
  </head>
  <body>
  <div class="faux-bordersInterface">
    <div id="divContainer">
        <div id="divTitulo">Ferramenta de Anotação Manual Automatizada</div>
        
        <div id="divTexto">  
            <div id="texto"></div>
            <div id="carregados">
                <p>Arquivos carregados:<br>

                    <!--<input type="file" id="btCarregarTexto">-->

                    <select id="btCarregarTexto">
                    <option selected="selected">Selecione um arquivo</option>
                    
                    <?php
                        $path = "loaded/";
                        $diretorio = dir($path);

                        //echo "";

                        while($arquivo = $diretorio -> read()){
                        $aux = $path.$arquivo;?>
                        
                        <option  value="<?php echo $aux; ?>"><?php echo $arquivo ?></option>
                        <?php
                        }
                        $diretorio -> close();
                        ?>
                </select></p><br>
        </div>
        </div>
        <div id="divAnotacao"></div>
        <div id="divSalva">
            <p>
                <a href="Guia.pdf" id="btGuia">Guia de Anotação</a>
                <button id='btSalvar' onclick='salvarAnotacoes()'>Salvar</button>
            </p>
        </div>
    </div>
  </div>  
  </body>
</html>