<?php
// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Obtém os dados do formulário
  $email = $_POST['usuario'];
  $login = $_POST['login'];
  $senha = $_POST['senha'];
  
  // Verifica se algum campo está em branco
  if (empty($email) || empty($login) || empty($senha)) {
    echo "Por favor, preencha todos os campos.";
  } else {
    // Conecta-se ao banco de dados (substitua as informações de conexão com as suas)
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "test";
    
    $conn = new mysqli($servername, $username, $password, $dbname);
    
    // Verifica se a conexão foi estabelecida corretamente
    if ($conn->connect_error) {
      die("Falha na conexão com o banco de dados: " . $conn->connect_error);
    }
    
    // Insere os dados no banco de dados
    //$sql = "INSERT INTO usuario (email, login, senha) VALUES ('$email', '$login', '$senha')";

    $sql = "INSERT INTO `usuario`(`email`, `login`, `senha`) VALUES ('$email','$login','$senha')";
    
    if ($conn->query($sql) ) {
      echo "Usuário cadastrado com sucesso!";
    } else {
      echo "Erro ao cadastrar o usuário: " . $conn->error;
    }
    
    $conn->close();
  }
}
?>





















