<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Visualizar Tarefa</title>
</head>
<body>
    <h1>Visualizar Tarefa</h1>

    <cfquery name="queryTask" datasource="db">
        SELECT * FROM tasks WHERE id = <cfqueryparam name="id" type="integer">
    </cfquery>

    <cfset tarefa = queryTask.result[1]>
    
    <p>Título: #tarefa.titulo#</p>
    <p>Descrição: #tarefa.descricao#</p>
    <p>Data de Criação: #tarefa.data_criacao#</p>
    <p>Status: #tarefa.status#</p>
    <a href="index.cfm">Voltar para a lista de tarefas</a>
    <a href="update.cfm?id=#tarefa.id#">Editar Tarefa</a>
    <a href="delete.cfm?id=#tarefa.id#">Excluir Tarefa</a>
</body>
</html>
