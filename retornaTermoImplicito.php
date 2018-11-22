<?php
  include "seguranca.php";
  protegePagina();

  function mysql_fetch_all1($result) {
    $rows = array();
    while ($row = mysql_fetch_array($result)) {
      $rows[] = $row;
    }
    return $rows;
  }

  $feature = $_POST['feature'];
  $sq1 = "select distinct term, feature from anotacoes";
  $results = mysql_query($sq1);
  $count = mysql_num_rows($results);
  echo "<select>";
  if($count > 0){
    echo "<option selected>Selecione uma Opção</option>";
    foreach(mysql_fetch_all1($results) as $implicito){
      if($implicito['term'] != '' && $implicito['feature'] == $feature) {
        echo "<option>".$implicito['term']."</option>";
      }
    }
  }else{
    echo "<option selected>Sem Opção".$feature."</option>";
  }
  echo "</select>";
?>