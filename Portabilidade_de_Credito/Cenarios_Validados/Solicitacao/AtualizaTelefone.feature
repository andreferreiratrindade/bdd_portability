# language: pt

Funcionalidade: Atualização de telefone do cliente para proponente

Regra: É obrigatório o cliente informar telefone ou e-mail
    Contexto:
        Dado que o cliente solicita portabilidade de crédito
        E o cliente está na jornada para instituição proponente

Cenário: Cliente atualiza o telefone para instituição proponente
Dado que a proponente informa o telefone do cliente para acessar os dados do contrato
E permite que o cliente atualize
Quando o cliente envia solicitação de portabilidade
Então a proponente e a instituição credora podem atualizar o registro de telefone

Cenário: Cliente NÃO atualiza o telefone para instituição proponente
Dado que a proponente informa o telefone do cliente para acessar os dados do contrato
E permite que o cliente atualize
Quando o cliente envia solicitação de portabilidade
Mas não atualiza o telefone
Então a proponente e a instituição credora mantém registro atual de telefone

Cenário: Cliente informa o telefone para instituição proponente
Dado que a proponente solicita o telefone do cliente para acessar os dados do contrato
E permite que o cliente informe seu número de telefone
Quando o cliente envia solicitação de portabilidade
Então a proponente e a instituição credora podem criar o registro de telefone do cliente

Cenário: Cliente NÃO informa o telefone para instituição proponente
Dado que a proponente solicita o telefone do cliente para acessar os dados do contrato
E permite que o cliente informe seu número de telefone
Quando o cliente envia solicitação de portabilidade
Mas não informa o telefone
E não tem e-mail cadastrado
Então é exibido uma mensagem de crítica ao cliente
E a proponente e a instituição credora NÃO podem criar o registro de telefone do cliente