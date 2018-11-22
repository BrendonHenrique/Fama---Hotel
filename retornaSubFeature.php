<?php
  include "seguranca.php";
  protegePagina();

  function mysql_fetch_all1($result) {
    $rows = array();
    while ($row = mysqli_fetch_array($result)) {
      $rows[] = $row;
    }
    return $rows;
  }
  
  $feature = $_POST['feature'];
  $sql = "select subfeatures.descricao from subfeatures inner join features on subfeatures.id_feature=features.id where features.descricao='".$feature."'";
  $results = mysqli_query($conn,$sql);
  $count = mysqli_num_rows($results);
  echo "<select>";
  if($count > 0){
    echo "<option selected>Selecione uma Opção</option>";
    foreach(mysql_fetch_all1($results) as $subfeature){
      echo "<option>".$subfeature['descricao']."</option>";
    }
  }else{
    echo "<option selected>Sem Opção".$feature."</option>";
  }
  echo "</select>";
?>
