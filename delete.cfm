<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Excluir Tarefa</title>
</head>

<body>
    <h1>Excluir Tarefa</h1>
    <p>Tem certeza que deseja excluir a tarefa <strong>#cfqueryparam name="titulo" type="string"#</strong>?</p>
    <a href="delete.cfm?id=#cfqueryparam name="id" type="integer"&confirmar=1">Sim, Excluir</a>
    <a href="index.cfm">Cancelar</a>
    <cfif #cfqueryparam name="confirmar" type="integer" EQ 1#>
        <cfquery name="queryDelete" datasource="db">
            DELETE FROM tasks WHERE id = #cfqueryparam name="id" type="integer">
        </cfquery>
        <p>Tarefa excluída com sucesso!</p>
        <a href="index.cfm">Voltar para a lista de tarefas</a>
    </cfif>
</body>
</html>
