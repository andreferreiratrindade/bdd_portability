# language: pt

Funcionalidade: 

Cenário: cliente realizou o consentimento COM a finalidade de operação de crédito
Cenário: Cliente realizou o consentimento SEM a finalidade de operação de crédito
Cenário: Cliente ainda não realizou o consentimento e solicita portabilidade
Cenário: cliente já tem compartilhamento via openfinance e solicita portabilidade
Cenário: cliente não tem compartilhamento via openfinance e é cliente e solicita a portabilidade
Cenário: cliente não tem compartilhamento via openfinance e não é cliente e solicita portabilidade

Cenário: Cliente nega consentimento de acesso aos dados
Dado que o cliente tem um contrato de crédito com a instituição credora
E acessa o app da instituição proponente para consultar a portabilidade
E solicita a portabilidade de crédito
E a proponente requer consentimento do cliente para acesso aos dados do contrato
Quando o cliente nega o consentimento
Então é cancelado o pedido de portabilidade de crédito

