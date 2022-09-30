<?php 
  //  header('location: localhost:8080/projeto/index.php');
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="styles.css">
  <title>Cadastro</title>
</head>
<body>
    <div>
      <h1>Adicionar um novo usuário</h1>
      <form action="usuarios.php" method="post">
        <label>Login</label>
          <input id="login" type="text" name="login" required></br>
        
        <label>Nome</label>
          <input id="name" type="text" name="name" required></br>
        
        <label>Senha</label>
          <input id="password" type="password" name="password" required></br>
        
        <input id="submit" type="submit" Value="Cadastrar">
      </form>
      <a href="index.php">Voltar</a>
    </div>
</body>
</html>

<?php 
session_start();
/*if (!isset($_SESSION['nome'])){
    header('Location: login.php?msg=seção expirada faça login');
}*/
include('varlog.php');
  require 'rb.php';
  //R::setup( 'mysql:host=localhost;dbname=login','root', '' );
  R::setup( 'sqlite:DBlogin.db' );


  if($_SERVER["REQUEST_METHOD"] == "POST"){
    $bd_usuarios = R::dispense( 'usuarios' );

    $cad_login = isset($_POST['login'])?$_POST['login']:"";
    $cad_name = isset($_POST['name'])?$_POST['name']:"";
    $cad_password = isset($_POST['password'])?$_POST['password']:"";


    //Verifica se o usuário já existe
    if(R::findOne('usuarios', 'login = ?', [$cad_login])) {      
      echo '<h1>Usuário já existe!</h1>';

    }else if($cad_login != "" && $cad_name != "" && $cad_password != ""){
      $bd_usuarios -> login = $cad_login;
      $bd_usuarios -> nome = $cad_name;
      $bd_usuarios -> senha = $cad_password;
      $id = R::store( $bd_usuarios );

  //Entrada de registro de LOG no banco de dados
  $bd_log = R::dispense( 'logsistema' );

  $bd_log->login = $_SESSION['login'];
  $bd_log->acao = "Cadastrou um novo usuário ".$cad_name." com o login ".$cad_login;
  $bd_log->data = date('Y/m/d H:i:s');
  $id = R::store($bd_log);
      
      echo '<h1>Teste OK</h1>';
  }};
?>
