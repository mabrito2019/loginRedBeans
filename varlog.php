<?php
   
function ini_session($nome,$login){
        
        session_start();
        $_SESSION['nome'] = $nome;
        $_SESSION['login'] = $login;
};

function ext_session(){
        $_SESSION = array();
        //session_destroy();
};


?>