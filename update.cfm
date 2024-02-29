<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Editar Tarefa</title>
</head>
<body>
    <h1>Editar Tarefa</h1>

    <cfquery name="queryTask" datasource="db">
        SELECT * FROM tasks WHERE id = <cfqueryparam name="id" type="integer">
    </cfquery>

    <cfset tarefa = queryTask.result[1]>
    
    <form action="update.cfm?id=#tarefa.id#" method="post">
        <label for="titulo">Título:</label>
        <input type="text" name="titulo" id="titulo" value="#tarefa.titulo#">
        <br>
        <label for="descricao">Descrição:</label>
        <br>
        <textarea name="descricao" id="descricao">#tarefa.descricao#</textarea>
        <br>
        <label for="data_criacao">Data de Criação:</label>
        <input type="date" name="data_criacao" id="data_criacao" value="#tarefa.data_criacao#">
        <br>
        <label for="status">Status:</label>
        <select name="status" id="status">
            <option value="pendente" <cfif #tarefa.status# EQ "pendente">selected</cfif>>Pendente</option>
            <option value="concluida" <cfif #tarefa.status# EQ "concluida">selected</cfif>>Concluída</option>
        </select>
        <br>
        <input type="submit" value="Atualizar Tarefa">
    </form>
</body>
</html>
