<?php
    //print_r($_REQUEST);
    if (   isset($_POST['btnlogar'])  ) {
        //Acessa
        include_once('config.php');
        $email = $_POST['email'];
        $senha = $_POST['senha'];

        echo $email;
        echo('<br>');
        echo $senha;


       $sql = "SELECT id,nome,nascimento,cpf,
                      telefone,endereco,cep,estado,email,
                      senha
               FROM   tb_cadastrocliente
               WHERE  email LIKE '$email' and senha LIKE '$senha'";
       echo('<br>');
       echo $sql;

        $resultado = mysqli_query($conexao,$sql);
        $qtd = mysqli_num_rows($resultado);
        $logado = mysqli_fetch_assoc($resultado);
        
        $qtd = mysqli_num_rows($resultado);
        
        if ($qtd == 0)
        {
             header('location: login.php');
        }
        else
        {
             header('location: index.php');
       }

    }
    else{
        header('Location: login.php');
        echo "nao logou";
    }
 
    
?>