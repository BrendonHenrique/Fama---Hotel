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

  $subfeature = $_POST['subfeature'];
  $sql = "select subsubfeatures.descricao from subsubfeatures inner join subfeatures on subsubfeatures.id_subfeature=subfeatures.id where subfeatures.descricao=lcase('".$subfeature."')";
  $results = mysqli_query($conn, $sql);
  $count = mysqli_num_rows($results);
  echo "<select>";
  if($count > 0){
    echo "<option selected>Selecione uma Opção</option>";
    foreach(mysql_fetch_all1($results) as $subsubfeature){
      echo "<option>".$subsubfeature['descricao']."</option>";
    }
  }else{
    echo "<option selected>Sem Opção</option>";
  }
  echo "</select>";
?>
