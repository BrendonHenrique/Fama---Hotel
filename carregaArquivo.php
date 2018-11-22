<?php
  include "seguranca.php";
  protegePagina();

  function criaLinhaFeature($feature){
    global $conn;

    $sql = "SELECT * FROM features";
    $result  = mysqli_query($conn,$sql);
    echo "<div class='divLinha' >";
    echo "<select class='feature'>"; 
    while($row = mysqli_fetch_array($result))
    {
      if(strtolower($feature) == $row['descricao']){
	echo "<option selected>";
	echo $row['descricao'];
	echo "</option>";
      }else{
	echo "<option>";
	echo $row['descricao'];
	echo "</option>";
      }
    }
    echo "</select>";
    $sql = "SELECT subfeatures.descricao FROM subfeatures inner join features on subfeatures.id_feature=features.id where features.descricao='".$feature."'";
    $result  = mysqli_query($conn,$sql);
    echo "<select class='subfeature'>";
    echo "<option selected>Selecione uma Opção</option>";
    while($row = mysqli_fetch_array($result))
    {
      echo "<option>";
      echo $row['descricao'];
      echo "</option>";
    }
    echo "</select>";
    echo "<select class='subsubfeature'>
	    <option>SubSubFeature</option>
	  </select>";
    echo "<select class='polarity'>
	    <option value='1'>1</option>
	    <option value='0'>0</option>
	    <option value='-1'>-1</option>
	  </select>";
    echo "<select class='exim'>
	    <option value='ex' selected>Explícito</option>
	    <option value='im'>Implícito</option>
	  </select>";
    echo "<input class='btRemover' type='submit' value='Remover linha'></input>";
    echo "</div>";
  }

  function criaLinhaSubFeature($subfeature){
    global $conn;

    $sql = "SELECT features.descricao FROM subfeatures inner join features on subfeatures.id_feature=features.id where subfeatures.descricao='".$subfeature."'";
    $result  = mysqli_query($conn,$sql);
    $feature = mysqli_fetch_row($result);
    $feature = $feature[0];
    $sql = "SELECT descricao FROM features";
    $result  = mysqli_query($conn,$sql);
    echo "<div class='divLinha' >";
    echo "<select class='feature'>"; 
    while($row = mysqli_fetch_array($result))
    {
      if(strtolower($feature) == $row['descricao']){
	echo "<option selected>";
	echo $row['descricao'];
	echo "</option>";
      }else{
	echo "<option>";
	echo $row['descricao'];
	echo "</option>";
      }
    }
    echo "</select>";
    $sql = "SELECT subfeatures.descricao FROM subfeatures inner join features on subfeatures.id_feature=features.id where features.descricao='".$feature."'";
    $result  = mysqli_query($conn,$sql);
    echo "<select class='subfeature'>";
    while($row = mysqli_fetch_array($result))
    {
      if($row['descricao'] == strtolower($subfeature)){
	echo "<option selected>";
	echo $row['descricao'];
	echo "</option>";
      }else{
	echo "<option>";
	echo $row['descricao'];
	echo "</option>";
      }
    }
    echo "</select>";
    $sql = "SELECT subsubfeatures.descricao FROM subfeatures inner join subsubfeatures on subsubfeatures.id_subfeature=subfeatures.id where subfeatures.descricao='".$subfeature."'";
    $result  = mysqli_query($conn,$sql);
    echo "<select class='subsubfeature'>";
    echo "<option selected>Selecione uma Opção</option>";
    while($row = mysqli_fetch_array($result))
    {
      echo "<option>";
      echo $row['descricao'];
      echo "</option>";
    }
    echo "</select>";
    echo "<select class='polarity'>
	    <option value='1'>1</option>
	    <option value='0'>0</option>
	    <option value='-1'>-1</option>
	  </select>";
    echo "<select class='exim'>
	    <option value='ex' selected>Explícito</option>
	    <option value='im'>Implícito</option>
	  </select>";
    echo "<input class='btRemover' type='submit' value='Remover linha'></input>";
    echo "</div>";
  }

  function criaLinhaSubSubFeature($subsubfeature){
    global $conn;

    $sql = "SELECT subfeatures.descricao FROM subfeatures inner join subsubfeatures on subsubfeatures.id_subfeature=subfeatures.id where subsubfeatures.descricao='".$subsubfeature."'";
    $result  = mysqli_query($conn,$sql);
    $subfeature = mysqli_fetch_row($result);
    $subfeature = $subfeature[0];
    $sql = "SELECT features.descricao FROM subfeatures inner join features on subfeatures.id_feature=features.id where subfeatures.descricao='".$subfeature."'";
    $result  = mysqli_query($conn,$sql);
    $feature = mysqli_fetch_row($result);
    $feature = $feature[0];
    $sql = "SELECT descricao FROM features";
    $result  = mysqli_query($conn,$sql);
    echo "<div class='divLinha' >";
    echo "<select class='feature'>"; 
    while($row = mysqli_fetch_array($result))
    {
      if(strtolower($feature) == $row['descricao']){
	echo "<option selected>";
	echo $row['descricao'];
	echo "</option>";
      }else{
	echo "<option>";
	echo $row['descricao'];
	echo "</option>";
      }
    }
    echo "</select>";
    $sql = "SELECT subfeatures.descricao FROM subfeatures inner join features on subfeatures.id_feature=features.id where features.descricao='".$feature."'";
    $result  = mysqli_query($conn,$sql);
    echo "<select class='subfeature'>";
    while($row = mysqli_fetch_array($result))
    {
      if($row['descricao'] == strtolower($subfeature)){
	echo "<option selected>";
	echo $row['descricao'];
	echo "</option>";
      }else{
	echo "<option>";
	echo $row['descricao'];
	echo "</option>";
      }
    }
    echo "</select>";
    $sql = "SELECT subsubfeatures.descricao FROM subfeatures inner join subsubfeatures on subsubfeatures.id_subfeature=subfeatures.id where subfeatures.descricao='".$subfeature."'";
    $result  = mysqli_query($conn,$sql);
    echo "<select class='subsubfeature'>";
    echo "<option selected>Selecione uma Opção</option>";
    while($row = mysqli_fetch_array($result))
    {
      if(strtolower($subsubfeature) == $row['descricao']){
	echo "<option selected>";
	echo $row['descricao'];
	echo "</option>";
      }else{
	echo "<option>";
	echo $row['descricao'];
	echo "</option>";
      }
    }
    echo "</select>";
    echo "<select class='polarity'>
	    <option value='1'>1</option>
	    <option value='0'>0</option>
	    <option value='-1'>-1</option>
	  </select>";
    echo "<select class='exim'>
	    <option value='ex' selected>Explícito</option>
	    <option value='im'>Implícito</option>
	  </select>";
    echo "<input class='btRemover' type='submit' value='Remover linha'></input>";
    echo "</div>";
  }

  echo "<div id='divCabecalho'>Features Explícitas</div>";

  echo "<div id='divAnotacaoExplicita'>";
  $conteudoArquivo = $_POST['arquivo'];

  $sql = "SELECT descricao FROM features";
  $features_bd = mysql_fetch_all($sql);
  foreach($features_bd as $feature){
    //echo " feature"; print_r($feature['descricao']);
   // echo " <br><\br> conteudo"; print_r($conteudoArquivo);

    $pos = strpos(strtolower($conteudoArquivo), strtolower($feature['descricao']));
    if ($pos === false){
    }else{
      $features[]=$feature['descricao'];
    }
  }

  $sql = "SELECT descricao FROM subfeatures";
  $subfeatures_bd = mysql_fetch_all($sql);
  foreach($subfeatures_bd as $subfeature){
    $pos = strpos(strtolower($conteudoArquivo), strtolower($subfeature['descricao']));
    if ($pos === false){
    }else{
      $subfeatures[]=$subfeature['descricao'];
    }
  }

  $sql = "SELECT descricao FROM subsubfeatures";
  $subsubfeatures_bd = mysql_fetch_all($sql);
  foreach($subsubfeatures_bd as $subsubfeature){
    $pos = strpos(strtolower($conteudoArquivo), strtolower($subsubfeature['descricao']));
    if ($pos === false){
    }else{
      $subsubfeatures[]=$subsubfeature['descricao'];
    }
  }
  
  if(isset($features)){
    foreach($features as $feature){
      criaLinhaFeature($feature);
    }
  }
  if(isset($subfeatures)){
    foreach($subfeatures as $subfeature){
      criaLinhaSubFeature($subfeature);
    }
  }
  if(isset($subsubfeatures)){
    foreach($subsubfeatures as $subsubfeature){
      criaLinhaSubSubFeature($subsubfeature);
    }
  }
  echo "</div>";
  echo "<div id='divCabecalho'>Features Implícitas</div>";
  echo "<div id='divAnotacaoImplicita'>";
  echo "</div>";
  echo "<input class='btAdicionar' type='submit' value='Adicionar linha'>";
  echo "<script defer=true src='scripts/jquery.min.js'></script>";
  echo "<script defer=true src='scripts/pegarSubFeature.js'></script>";
  echo "<script defer=true src='scripts/pegarSubSubFeature.js'></script>";
  echo "<script defer=true src='scripts/removerLinha.js'></script>";
  echo "<script defer=true src='scripts/adicionarLinha.js'></script>";
  
?>
