<?php
   
function ini_session($nome,$login){
        $_SESSION['nome'] = $nome;
        $_SESSION['login'] = $login;
};

function ext_session(){
        $_SESSION = array();
        //session_destroy();
};

function ini_page(){
        session_start();
        date_default_timezone_set ("Brazil/East");
};
?>