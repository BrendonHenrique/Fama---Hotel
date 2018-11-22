<?php
  $servidor = 'localhost';
  $banco = 'hotel';
  $usuario = 'root';
  $senha = 'root';
  $conn = mysqli_connect($servidor, $usuario, $senha, $banco);


  mysqli_set_charset($conn,'utf8');
  //$charset = mysqli_character_set_name($conn);
  
  if(!$conn)
  {
    echo "erro ao conectar ao banco de dados!";
    exit();
  }

  function mysql_fetch_all($query){
    global $conn;
    $r= mysqli_query($conn,$query);
    if($err = mysqli_errno($conn))
      return $err;
    if(mysqli_num_rows($r))
      while($row=mysqli_fetch_assoc($r))
	$result[]=$row;
	return $result;
  }
?>