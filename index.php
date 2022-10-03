<!DOCTYPE html>
<html lang="pt">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Home</title>
</head>
<?php
include('varlog.php');
ini_page();

if (!isset($_SESSION['nome'])){
    header('Location: login.php?msg=seção expirada faça login');
};
?>
<header>
    <?php echo 'Seja Bem vindo '.$_SESSION['nome']?>, <a href="login.php?sair=encerrar">Sair</a>
</header>

<body>
<a href="./usuarios.php" id="ancora"><input type="button" value="Usuarios" class="botao"></a>
<a href="./produtos.php" id="ancora"><input type="button" value="Produtos" class="botao"></a>
<a href="./log.php" id="ancora"><input type="button" value="Log do Sistema" class="botao"></a>
</body>
</html>

