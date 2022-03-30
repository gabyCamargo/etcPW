<?php
    class usuario{
        public $usuario;
        public $senha;
        public $nome;
        public $tipoUsuario;

        public function getUsuario(){
            return $this->usuario = $usuario;
        }
        public function setUsuario($usuario){
            $this->usuario = $usuario;
        }

        public function getSenha(){
            return $this->senha = $senha;
        }
        public function setSenha($senha){
            $this->senha = $senha;
        }

        public function getNome(){
            return $this->nome = $nome;
        }
        public function setNome($nome){
            $this->nome = $nome;
        }

        public function getTipoUsuario(){
            return $this->tipoUsuario = $tipoUsuario;
        }
        public function setTipoUsuario($tipoUsuario){
            $this->tipoUsuario = $tipoUsuario;
        }

        public function validarAcesso($usuario, $senha){
            $usuario = "admin";
            $senhaMD5 = md5('123456');
            $senhaCrypt = crypt($senhaMD5, 'etec');
        
            
            //vamos agora verificar os dados passado pelo usuário
            //verificar se o botão submit foi adicionado
        
            // isset() -- verifica que a variável está setada, ou seja, se possuí o valor diferente de null
        
            if(isset($_POST['btnLogin'])){
                //antes de fazer a comparação com a senha digitada, devo criptografa-la
                $senhaUser = crypt(md5($_POST['pass']), 'etec');
                if($_POST['username'] == $usuario && $senhaUser == $senhaCrypt){
                    //echo "Usuário Logado!";
                    $_SESSION['usuario'] = $_POST['username'];
                    $resultado = true;
        
                }else{
                    $resultado = false; 
                }
        
           }

           return $resultado;
        }

    }


?>