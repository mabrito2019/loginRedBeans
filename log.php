<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Log do Sistema</title>
</head>

<?php
include('varlog.php');
require 'rb.php';
ini_page();

if (!isset($_SESSION['nome'])){
  header('Location: login.php?msg=seção expirada faça login');
};

R::setup( 'sqlite:DBlogin.db' );

$acao = isset($_GET["acao"])? $_GET["acao"] :'listar';

echo '<header>
    Seja Bem vindo '. $_SESSION['nome'] .', <a href="login.php?sair=encerrar">Sair</a>
  </header>';

    ?>
  <body>
      <div>
        <h1>Log do Sistema</h1>
      </div>
      <div>
      <table border="1" width="100%">
      <tr> <th>Registro</th> <th>Login</th> <th>Ação</th> <th>Data</th> </tr>
      
      <?php $filtro= (isset($_GET['filtro'])?$_GET['filtro']:''); ?>
      
      <form action=log.php>
      <input id="filtro" name="filtro" type="text">
      <input type="submit" Value="filtrar">
      </form>
        
    <?php     
      //Listagem dos produtos
      $logdb = R::find('logsistema','login LIKE ?',['%'.$filtro.'%'],' ORDER BY id DESC ');

       foreach ($logdb as $item) { 
        ?>
        <tr>
            <td><?=$item->id?></td>
          <td><?=$item->login?></td>
          <td><?=$item->acao?></td>
          <td><?=$item->data?></td>
       </tr>

          <?php }; ?>
      </table>
      </div>
      <a href="index.php">HOME</a>
  </body>
  </html>