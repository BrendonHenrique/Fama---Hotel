<?php
  include "seguranca.php";

  // protegePagina();
global $conn;

  function mysql_fetch_all1($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $rows = array();
    while ($row = mysqli_fetch_array($result)) {
      $rows[] = $row;
    }
    return $rows;
  }
 
  $conteudoArquivo = $_POST['arquivo'];

  $sql = "SELECT descricao FROM features";
  $features_bd = mysql_fetch_all1($sql);
  foreach($features_bd as $feature){
   
    $pos = strpos(strtolower($conteudoArquivo), strtolower($feature[0]));

    if ($pos === false){
    }else{	
	$features[]=$feature[0];
    }
  }

  $sql = "SELECT descricao FROM subfeatures";
  $subfeatures_bd = mysql_fetch_all1($sql);
  foreach($subfeatures_bd as $subfeature){
    $pos = strpos(strtolower($conteudoArquivo), strtolower($subfeature[0]));
    if ($pos === false){
    }else{
      $subfeatures[]=$subfeature[0];
    }
  }

  $sql = "SELECT descricao FROM subsubfeatures";
  $subsubfeatures_bd = mysql_fetch_all1($sql);
  foreach($subsubfeatures_bd as $subsubfeature){
    $pos = strpos(strtolower($conteudoArquivo), strtolower($subsubfeature[0]));
    if ($pos === false){
    }else{		
      $subsubfeatures[]=$subsubfeature[0];
    }
  }
  
  if(isset($features)){
	$listFeatures=json_encode($features);
  }
  if(isset($subfeatures)){
    $listSubFeatures=json_encode($subfeatures);
  }
  if(isset($subsubfeatures)){
	$listSubSubFeatures=json_encode($subsubfeatures);
  }
  
if(isset($features) and isset($subfeatures) and isset($subsubfeatures)){
	echo json_encode(array("features" => $listFeatures, "subfeatures" => $listSubFeatures, "subsubfeatures" => $listSubSubFeatures));
 }
if(isset($features) and isset($subfeatures) and !isset($subsubfeatures)){
	echo json_encode(array("features" => $listFeatures, "subfeatures" => $listSubFeatures));
}
if(isset($features) and !isset($subfeatures) and !isset($subsubfeatures)){
	echo json_encode(array("features" => $listFeatures));
}
if(isset($features) and !isset($subfeatures) and isset($subsubfeatures)){
	echo json_encode(array("features" => $listFeatures, "subsubfeatures" => $listSubSubFeatures));
}
if(!isset($features) and !isset($subfeatures) and isset($subsubfeatures)){
	echo json_encode(array("subsubfeatures" => $listSubSubFeatures));
}
if(!isset($features) and isset($subfeatures) and isset($subsubfeatures)){
	echo json_encode(array("subfeatures" => $listSubFeatures, "subsubfeatures" => $listSubSubFeatures));
}
if(!isset($features) and isset($subfeatures) and !isset($subsubfeatures)){
	echo json_encode(array("subfeatures" => $listSubFeatures));
}

?>
