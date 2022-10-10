<?php
   
function ini_session($nome,$login){
        $_SESSION['nome'] = $nome;
        $_SESSION['login'] = $login;
};

function ext_session(){
//Regista a ação de Logoff no Log do sistema
$bd_log = R::dispense( 'logsistema' );
   
$bd_log->login = $_SESSION['login'];
$bd_log->acao = "Encerrou a se".$_POST['quantidade']." ".$_POST['unidade']." de ".$_POST['descricao'];
$bd_log->data = date('Y/m/d H:i:s');
$id = R::store($bd_log);

        $_SESSION = array();
        //session_destroy();       
};

function ini_page(){
        session_start();
        date_default_timezone_set ("Brazil/East");
};
?>