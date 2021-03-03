<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/global_css.css">
</head>
<body id="config">
    <div id="cabecalho" class="row">
        <nav class="navbar navbar-expand-sm navbar-light">
            <div class="col-sm-0 col-md-0 col-lg-1"></div>
            <div class="col-sm-12 col-md-2 col-lg-3">
                <h3 id="titulo-nav" href="index.php">Engenharia de Sistemas</h3>
            </div>
            <!-- coluna fantasma para separação-->
            <div class="col-sm-0 col-md-0 col-lg-1"></div>
            <div class="col-sm-12 col-md-2 col-lg-3">
                <h3 id="subtitulo-nav">Site da turma X</h3>
            </div>
            <!-- coluna fantasma para separação-->
            <div class="col-sm-0 col-md-0 col-lg-5"></div>
            <button class="navbar-toggler" data-toggle="collapse" data-target="#menu-do-navbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="menu-do-navbar">
                <ul class="navbar-nav ml-auto">
                    <li>
                        <a href="index.php" id="opc-home" class="rounded opcao nav-link">Home</a>
                    </li>
                    <li class="nav-item">
                        <a href="disciplinas.php" id="opc-disciplinas" class="rounded opcao nav-link">Disciplinas</a>
                    </li>
                    <li class="nav-item">
                        <a href="configuracoes.php" id="opc-config" class="rounded opcao nav-link">Configurações</a>
                    </li>  <li class="nav-item">
                </ul>
            </div>
            
        </nav>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>