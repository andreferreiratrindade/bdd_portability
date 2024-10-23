# language: pt

Funcionalidade: Atualização de E-mail do cliente para proponente

Regra: É obrigatório o cliente informar e-mail ou e-mail
    Contexto:
        Dado que o cliente solicita portabilidade de crédito
        E o cliente está na jornada para instituição proponente

Cenário: Cliente atualiza o e-mail para instituição proponente
Dado que a proponente informa o e-mail do cliente para acessar os dados do contrato
E permite que o cliente atualize
Quando o cliente envia solicitação de portabilidade
Então a proponente e a instituição credora podem atualizar o registro de e-mail

Cenário: Cliente NÃO atualiza o e-mail para instituição proponente
Dado que a proponente informa o e-mail do cliente para acessar os dados do contrato
E permite que o cliente atualize
Quando o cliente envia solicitação de portabilidade
Mas não atualiza o e-mail
Então a proponente e a instituição credora mantém registro atual de e-mail

Cenário: Cliente informa o e-mail para instituição proponente
Dado que a proponente solicita o e-mail do cliente para acessar os dados do contrato
E permite que o cliente informe seu número de e-mail
Quando o cliente envia solicitação de portabilidade
Então a proponente e a instituição credora podem criar o registro de e-mail do cliente

Cenário: Cliente NÃO informa o e-mail para instituição proponente
Dado que a proponente solicita o e-mail do cliente para acessar os dados do contrato
E permite que o cliente informe seu número de e-mail
Quando o cliente envia solicitação de portabilidade
Mas não informa o e-mail
E não tem telefone cadastrado
Então é exibido uma mensagem de crítica ao cliente
E a proponente e a instituição credora NÃO podem criar o registro de e-mail do cliente