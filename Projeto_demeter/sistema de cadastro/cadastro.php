<!DOCTYPE html>
<html>

<head>
    <title>Formulário de Cadastro</title>
   
    <link rel="stylesheet" href="cadastro.css">
</head>

<body>
    <section>
        <figure id="imagem">
            <img src="img/006.png" alt="coffee-cup-wooden-table-dark-wall" srcset="sua mae" width="1500">
           

            
            
       
        </figure>
        <h2>Cadastro de Usuário</h2>

             
        <form method="POST" action="cadastroBack.php" class="form">
          
            <div class="container">
            <div class="campo">
                <label for="usuario">Usuário:</label>
                <input type="text" id="usuario" name="usuario" required placeholder="Seu Nome"><br><br>
            </div>
            <div>
                <label for="login">Login:</label>
                <input type="text" id="login" name="login" required placeholder="Seu Email"><br><br>
            </div>

            <div>
                <span class="material-symbols-outlined">

                </span>
                <label for="senha">Senha:</label>
                <input type="password" id="senha" name="senha" required placeholder="Sua senha"
                    autocomplete="current-password" required minlength="8" maxlength="20"><br><br>
                <a href="esqueci.html" class="botao">
                    Esqueci senha <i class="material-icons">mail</i>
                </a>
            </div>
            <br><br>
            <input type="submit" value="Cadastrar">
            <figure class="imagem2">
                <img src="img/324235345t3453.png" alt="" width="50px">
            </figure> 

            
            </div>
        </div>
        </form>
    </section>
</body>

</html>