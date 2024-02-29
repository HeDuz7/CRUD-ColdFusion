<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Nova Tarefa</title>
</head>
<body>
    <h1>Nova Tarefa</h1>
    <form action="create.cfm" method="post">
        <label for="titulo">Título:</label>
        <input type="text" name="titulo" id="titulo">
        <br>
        <label for="descricao">Descrição:</label>
        <br>
        <textarea name="descricao" id="descricao"></textarea>
        <br>
        <label for="data_criacao">Data de Criação:</label>
        <input type="date" name="data_criacao" id="data_criacao">
        <br>
        <label for="status">Status:</label>
        <select name="status" id="status">
            <option value="pendente">Pendente</option>
            <option value="concluida">Concluída</option>
        </select>
        <br>
        <input type="submit" value="Criar Tarefa">
    </form>
</body>
</html>
