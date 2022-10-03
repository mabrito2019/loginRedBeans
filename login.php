<!DOCTYPE html>
<html lang="pt">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
<?php
    include('varlog.php');
    require 'rb.php';
    ini_page();
    
    //R::setup( 'mysql:host=localhost;dbname=login','root', '' );
    R::setup( 'sqlite:DBlogin.db' );

    $msg = isset($_GET["msg"])? $_GET["msg"] :'';
    $sair = isset($_GET["sair"])?$_GET["sair"]:"";

    ($sair == 'encerrar' )?ext_session():'';
    
    $bd_usuarios = R::dispense( 'usuarios' );
    $bd_log = R::dispense( 'logsistema' );

    //verifica se a sessão está ativa
    if (isset($_SESSION['nome'])){
         header('Location: index.php');
        }else if(isset($_GET["login"]) && isset($_GET["senha"])){
        $p_login = $_GET["login"];
        $p_senha = $_GET["senha"];
        

        $bd_arr = R::findOne( 'usuarios', ' login = ? ', [$p_login]);
    
    //Verifica usuário e senha no banco de dados
    if (isset($bd_arr) && $bd_arr->login == $p_login){
    
        $bd_login = $bd_arr->login;
        $bd_senha = $bd_arr->senha;
        
        if($bd_arr->senha == $p_senha){
    
            ini_session($bd_arr->nome,$bd_login);
    
            //Entrada de registro de LOG no banco de dados
            $bd_log->login = $_SESSION['login'];
            $bd_log->acao = "Fez login no sistema";
            $bd_log->data = date('Y/m/d H:i:s');
            $id = R::store($bd_log);
            
            header('Location: index.php');
            
        }else{
            $_menssagem = 'Senha errada';
            header('Location: login.php?msg=Senha errada');
        }
    }else{
        $_menssagem = 'Usuário não existe';
        header('Location: login.php?msg=Usuário não existe');
    }};

    echo'
    <div id="corpo">
        <div id="head">
            <h1>login</h1>
        </div>
        <form id="login" method="GET" action="login.php">
            <input type="text" name="login" placeholder="Login" class="campo" required>
            <input type="password" name="senha" placeholder="Senha" class="campo" required>
            <input type="submit" value="Entrar" class="botao">';
            echo  $msg;
            echo '
        </form>
    </div>';
    ?>
</body>

</html>