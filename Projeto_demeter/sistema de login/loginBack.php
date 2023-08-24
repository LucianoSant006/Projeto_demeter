<?php
// Dados de conexão com o banco de dados
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test";

// Conexão com o banco de dados
$conn = new mysqli($servername, $username, $password, $dbname);

// Verifica se houve erro na conexão
if ($conn->connect_error) {
    die("Falha na conexão com o banco de dados: " . $conn->connect_error);
}

// Verifica se o formulário foi enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtém o login e senha fornecidos pelo usuário
    $login = $_POST["login"];
    $senha = $_POST["senha"];

    // Consulta o banco de dados para verificar o login e senha
    $sql = "SELECT * FROM usuario  WHERE login = '$login' AND senha = '$senha'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Exibe os dados de login e usuário
        while ($row = $result->fetch_assoc()) {
            echo "Login: " . $row["login"] . "<br>";
            echo "Usuário: " . $row["email"] . "<br>";
        }
    } else {
        // Exibe mensagem de erro
        echo "Login e/ou senha incorretos.";
    }
}

// Fecha a conexão com o banco de dados
$conn->close();


/* Estudando o código
//Após a consulta ao banco de dados, verificamos se o resultado ($result) contém mais de 0 linhas ($result->num_rows > 0). Isso significa que encontramos uma correspondência para o login e senha fornecidos pelo usuário no banco de dados.

Se a condição for verdadeira, entramos no bloco de código dentro do if. Dentro desse bloco, usamos um loop while para iterar sobre cada linha de resultado ($row = $result->fetch_assoc()).

A função fetch_assoc() retorna uma linha do resultado como um array associativo, onde as colunas do banco de dados são mapeadas para os seus respectivos valores. Neste caso, assumimos que a tabela "login" possui as colunas "login" e "usuario".

Dentro do loop, exibimos os dados de login e usuário usando a função echo, concatenando os valores do array $row com uma string que representa o rótulo do campo (por exemplo, "Login: " e "Usuário: "). As informações são exibidas usando a notação $row["nome_da_coluna"].

Assim, para cada linha de resultado correspondente ao login e senha fornecidos, os dados de login e usuário são exibidos na página.

Caso não haja nenhuma linha correspondente no banco de dados para o login e senha fornecidos, o bloco de código dentro do if não será executado e nenhuma informação será exibida.
*/

?>