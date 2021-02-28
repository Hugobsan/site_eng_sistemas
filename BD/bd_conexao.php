<?php // Arquivo bd_conexao.php
require_once('bd_config.php');    // Fornece as informações de conexão

// Função de conexão com o banco
function conectarBanco($local, $usuario, $senha, $banco)
{
  $conexao = new mysqli();  // Objeto da classe de conexão mysqli
  if($conexao->connect($local, $usuario, $senha, $banco)==false){
    
  }
  $conexao->connect($local, $usuario, $senha, $banco);  // Conexão com o BD
  $conexao->set_charset("utf8");  // Permitir a codificação UTF8
  return $conexao;
}

// Funções de Encerrar a conexão
function fecharConexao($conexao)
{
  $conexao->close();
}

// Chamada da função com informações vindas do bd_config.php depois da chamada da função conectarBanco e retornar a conexão.
$con = conectarBanco($bd_host, $bd_usu, $bd_senha, $bd_banco);

function search($sql, $con)
{
  $resultado = $con->query($sql);
  $infoUsuario = mysqli_fetch_object($resultado);
  return $infoUsuario;
}
