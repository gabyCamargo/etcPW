<?php
		require_once 'usuario.php';
			if(isset($_POST['btnLogin'])){
				$usuario = new Usuario();
				$usuario->setUsuario($_POST['username']);
				$usuario->setSenha($_POST['pass']);
				$resultado = $usuario->validarAcesso($_POST['username'], $_POST['pass']);
				if($resultado == true){
					header('location: principal.php');
				}else{
					header('location: pizzaria.php?erro=1');
				}
			}
?>