<?php
$diretorio = "loaded/";

if (!is_dir($diretorio)){ echo  "<script>alert('Pasta não existe!');</script>";
	header("Location: carregar.html");
}
else { echo "A Pasta Existe<br>";
			$arquivo = isset($_FILES['arquivo']) ? $_FILES['arquivo'] : FALSE;
				for ($i = 0; $i < count($arquivo['name']); $i++)
					{
					   $destino = $diretorio."/".$arquivo['name'][$i];

					    if (move_uploaded_file($arquivo['tmp_name'][$i], $destino)) {header("Location: interface.php"); }

					    else {echo "arquivos não movidos";}
					}		
} ?>

