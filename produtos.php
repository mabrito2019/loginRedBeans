<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Produtos</title>
</head>

<?php
session_start();
if (!isset($_SESSION['nome'])){
  header('Location: login.php?msg=seção expirada faça login');
};

require 'rb.php';
include('varlog.php');

//R::setup( 'mysql:host=localhost;dbname=login','root', '' );
R::setup( 'sqlite:DBlogin.db' );

$acao = isset($_GET["acao"])? $_GET["acao"] :'listar';

echo '<header>
    Seja Bem vindo '. $_SESSION['nome'] .', <a href="login.php?sair=encerrar">Sair</a>
  </header>';

echo 'ação: '.$acao;


switch ($acao){
  case 'listar':
    ?>
  <body>
      <div>
        <h1>Lista de Produto</h1>
        <a href="produtos.php?acao=cadastrar">Cadastrar</a>
      </div>
      <div>
      <table border="1" width="100%">
      <tr> <th>Código</th> <th>Descrição</th> <th>Preço</th> <th>Unidade</th> <th>Qantidade</th> <th>Ações</th> </tr>
      
      <?php

      $filtro= (isset($_GET['filtro'])?$_GET['filtro']:'');
      
      echo'<form action=produtos.php>
      <input id="filtro" name="filtro" type="text">
      <input type="submit" Value="filtrar">
      </form>';

      
      //echo $produto;
      
      //Listagem dos produtos
      $produtos = R::find('produtos','descricao LIKE ?',['%'.$filtro.'%']);

       foreach ($produtos as $item) { 
        ?>
        <tr>
          <td><?=$item->id?></td>
          <td><?=$item->descricao?></td>
          <td><?=$item->preco?></td>
          <td><?=$item->unidade?></td>
          <td><?=$item->quantidade?></td>
          <td> 
            <a href="produtos.php?acao=editar&id=<?=$item->id?>"><input type="button" value="editar"></a>
            <a href="produtos.php?acao=excluir&id=<?=$item->id?>"><input type="button" value="excluir"></a>
          </td>
       </tr>

          <?php }; ?>
      </table>
      </div>
  </body>
  </html>
  <?php break;
    
  case 'cadastrar':
  ?>
  <body>
  <div>
        <h1>Adicionar um novo Produto</h1>
        <form action="produtos.php?acao=cadastrar" method="post">
          <label>Descrição</label>
            <input id="descricao" type="text" name="descricao" required></br>
          
          <label>Preço Unitário</label>
            <input id="preco " type="text" name="preco" required></br>
          
          <label>Unidade de medida</label>
            <input id="unidade" type="text" name="unidade" required></br>
  
            <label>Quantidade</label>
            <input id="quantidade" type="text" name="quantidade"></br>
          
          <input id="submit" type="submit" Value="Cadastrar">
        </form>
        <a href="produtos.php">Voltar</a>
      </div>
  </body>
  </html>

  <?php

  //verifica se existe produto para cadastro para evitar erro no primeiro acesso da pagina.
  if(isset($_POST['descricao'])){

  //Verifica se o produto já existe
  if(R::findOne('produtos', 'descricao = ?', [$_POST['descricao']])) {      
    echo '<h1>Produto já existe!</h1>';
  }else{
    $bd_produtos = R::dispense( 'produtos' );

    $bd_produtos -> descricao = $_POST['descricao'];
    $bd_produtos -> preco = $_POST['preco'];
    $bd_produtos -> unidade = $_POST['unidade'];
    $bd_produtos -> quantidade = $_POST['quantidade'];
    R::store( $bd_produtos );
  

//Entrada de registro de LOG no banco de dados
$bd_movimentacao = R::dispense( 'movimentacao' );
$arr_produto = R::findOne('produtos', 'descricao = ?', [$bd_produtos -> descricao]);

//Teste echo $arr_produto.'<br>';
//Teste echo $arr_produto->id.'<br>';

$bd_movimentacao->codigo_produto = $arr_produto->id;
$bd_movimentacao->produto = $bd_produtos -> descricao;
$bd_movimentacao->data = date('Y/m/d H:i:s');
$bd_movimentacao->login = $_SESSION['login'];
$bd_movimentacao->acao = "Cadastrou um novo Produto ".$bd_produtos -> descricao;
$id = R::store($bd_movimentacao);
  }
}
  break;

case 'excluir':
  $excluir = R::findOne('produtos', 'id = ?', [$_GET['id']]);
  R::trash( $excluir );
  header('location:produtos.php');
  break;

  case 'editar':
    $editar = R::findOne('produtos', 'id = ?', [$_GET['id']]);
?>
    <form action="produtos.php?acao=editado&id=<?=$_GET['id']?>" method="post">
          <label>Descrição</label>
            <input id="descricao" type="text" name="descricao" value="<?=$editar->descricao?>" required></br>
          
          <label>Preço Unitário</label>
            <input id="preco " type="text" name="preco" value="<?=$editar->preco?>" required></br>
          
          <label>Unidade de medida</label>
            <input id="unidade" type="text" name="unidade" value="<?=$editar->unidade?>" required></br>
  
            <label>Quantidade</label>
            <input id="quantidade" type="text" name="quantidade" value="<?=$editar->quantidade?>"></br>
          
          <input id="submit" type="submit" Value="Salvar">
        </form>

<?php
break;

case 'editado':
  $bd_produtos = R::load( 'produtos', $_GET['id'] );

    $bd_produtos -> descricao = $_POST['descricao'];
    $bd_produtos -> preco = $_POST['preco'];
    $bd_produtos -> unidade = $_POST['unidade'];
    $bd_produtos -> quantidade = $_POST['quantidade'];
    R::store( $bd_produtos );
    header('location:produtos.php');
break;

};

echo '<a href="index.php">HOME</a>';
?>