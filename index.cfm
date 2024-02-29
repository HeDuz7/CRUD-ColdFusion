<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Gerenciador de Tarefas</title>
</head>
<body>
    <h1>Gerenciador de Tarefas</h1>
    <a href="create.cfm">Nova Tarefa</a>
    <ul>
        <cfquery name="queryTasks" datasource="db">
            SELECT * FROM tasks
        </cfquery>
        <cfset tarefas = queryTasks.result>
        <cfloop array="#tarefas#" index="i">
            <li>
                <h2>#tarefas[i].titulo#</h2>
                <p>#tarefas[i].descricao#</p>
                <p>Data de criação: #tarefas[i].data_criacao#</p>
                <p>Status: #tarefas[i].status#</p>
                <a href="read.cfm?id=#tarefas[i].id#">Visualizar</a>
                <a href="update.cfm?id=#tarefas[i].id#">Editar</a>
                <a href="delete.cfm?id=#tarefas[i].id#">Excluir</a>
            </li>
        </cfloop>
    </ul>
</body>
</html>
