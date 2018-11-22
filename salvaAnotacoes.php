<?php
  include "seguranca.php";
  protegePagina();

  $texto = $_POST['textoVal'];
  $feature = $_POST['featureVal'];
  $subfeature = $_POST['subfeatureVal'];
  $subsubfeature = $_POST['subsubfeatureVal'];
  $polarity = $_POST['polarityVal'];
  $exim = $_POST['eximVal'];
  $term = $_POST['termVal'];
  $usuarioID=$_SESSION['usuarioID'];

  $sql = "INSERT into anotacoes (texto, feature, subfeature, subsubfeature, polarity, exim, term, id_usuario) VALUES 
  ('".$texto."','".$feature."','".$subfeature."','".$subsubfeature."','".$polarity."','".$exim."','".$term."','".$usuarioID."')";
  $result = mysqli_query($conn,$sql);
?>