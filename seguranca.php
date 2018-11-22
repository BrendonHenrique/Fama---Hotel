<?php
  $_SG['abreSessao'] = true;         // Inicia a sessao com um session_start()?
  $_SG['caseSensitive'] = false;     // Usar case-sensitive Onde 'thiago' eh diferente de 'THIAGO'
  $_SG['validaSempre'] = true;       // Deseja validar o usuario e a senha a cada carregamento de pagina
  $_SG['paginaLogin'] = 'index.php'; // Pagina de login

  include "conecta.php";	

  if ($_SG['abreSessao'] == true) {
session_start();
  }

  function validaUsuario($usuario, $senha) {
  global $conn;

    global $_SG;
    $cS = ($_SG['caseSensitive']) ? 'BINARY' : '';
    $nusuario = addslashes($usuario);
    $nsenha = addslashes($senha);
    $sql = "SELECT id, nome FROM usuarios WHERE ".$cS." usuario = '".$nusuario."' AND ".$cS." senha = '".$nsenha."' LIMIT 1";
    $query = mysqli_query($conn,$sql);
    $resultado = mysqli_fetch_assoc($query);
    if (empty($resultado)) {
      return false;
    } else {
      $_SESSION['usuarioID'] = $resultado['id']; 
      $_SESSION['usuarioNome'] = $resultado['nome']; 
      if ($_SG['validaSempre'] == true) {
	$_SESSION['usuarioLogin'] = $usuario;
	$_SESSION['usuarioSenha'] = $senha;
      }
	return true;
    }
  }

  function protegePagina() {
  
    global $_SG;
    if (!isset($_SESSION['usuarioID']) OR !isset($_SESSION['usuarioNome'])) {
      expulsaVisitante();
    } else 
    if (!isset($_SESSION['usuarioID']) OR !isset($_SESSION['usuarioNome'])) {
      if ($_SG['validaSempre'] == true) {
	if (!validaUsuario($_SESSION['usuarioLogin'], $_SESSION['usuarioSenha'])) {
	  expulsaVisitante();
	}
      }
    }
  }

  function expulsaVisitante() {
    global $_SG;
    unset($_SESSION['usuarioID'], $_SESSION['usuarioNome'], $_SESSION['usuarioLogin'], $_SESSION['usuarioSenha']);
    header("Location: ".$_SG['paginaLogin']);
  }
?>
