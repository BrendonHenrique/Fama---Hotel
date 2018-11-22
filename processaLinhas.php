<?php
  include "seguranca.php";
  protegePagina();

  echo "<div class='divLinha'>";

  $sql = "SELECT * FROM features";
  $result  = mysqli_query($conn,$sql);

  echo "<select class='feature'>"; 
  echo "<option>Selecione uma Opção</option>";
  while($r = mysqli_fetch_array($result))
  {
    echo "<option value='feature'>";
    echo $r['descricao'];
    echo "</option>";
  }
  echo "</select>";

  echo "<select class='subfeature'>
		  <option value='uma subfeature'>SubFeature</option>
	</select>";
  echo "<select class='subsubfeature'>
		  <option value='uma subsubfeature'>SubSubFeature</option>
	</select>";
  echo "<select class='polarity'>
		  <option value='1'>1</option>
		  <option value='0'>0</option>
		  <option value='-1'>-1</option>
	</select>";
  echo "<select class='exim'>
		  <option value='ex'>Explícito</option>
		  <option value='im' selected>Implícito</option>
	</select>";
  echo "<input class='term' type='textedit' placeholder='termo'></input>";
  echo "<input class='btRemover' type='submit' value='Remover linha'></input>";
  echo "</div>";

  echo "<script src='scripts/jquery.min.js'></script>";
  echo "<script src='scripts/pegarSubFeature.js'></script>";
  echo "<script src='scripts/pegarSubSubFeature.js'></script>";
  echo "<script src='scripts/removerLinha.js'></script>";
?>