<!DOCTYPE html>
<html>
<head>
    <meta charset="UFT-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
     <link rel="stylesheet" href="https://cdn.es.gov.br/fonts/font-awesome/css/font-awesome.min.css">
     <link rel="stylesheet" href="login.css">
<body>
    <div id="login-container">
        <h1>Login</h1>
        <form action="testLogin.php" method="POST">
            <label for="email">E-mail</label>
            <input type="email" name="email" id="email" placeholder="Digite seu e-mail" autocomplete="off">
            <label for="password">Senha</label>
            <input type="password" name="senha" id="senha" placeholder="Digite sua senha">
            <input type="submit" name="btnlogar" value="entrar">
            <a href="cadastro.php" class="botao">
                <input type="button" value="cadastro">
            </a>
        </form>
    </div>
</body>
</html>  


<?php 

namespace app\controller\admin;

use \use\utils\view;

class login extends page{
    /** *metodo responsavel por retornar a renderização da pagina de login 
     @param request $request 
     @return string 
     */
    public static function getlogin ($request){
        //conteudo da pagina de login 
        $content = view::render(!admin/login , [])

        //retorna a pagina completa 
        return parent::getpage('login > WDEW ', $content);
    }
}