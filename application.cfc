component {

    public functions {

        function atualizarTarefa(id, titulo, descricao, data_criacao, status) {
            <cfquery name="queryUpdate" datasource="db">
                UPDATE tasks
                SET titulo = '#titulo#',
                    descricao = '#descricao#',
                    data_criacao = '#data_criacao#',
                    status = '#status#'
                WHERE id = #id#
            </cfquery>
        }

        function excluirTarefa(id) {
            <cfquery name="queryDelete" datasource="db">
                DELETE FROM tasks WHERE id = #id#
            </cfquery>
        }

    }

}
