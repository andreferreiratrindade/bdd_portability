# language: pt

Funcionalidade: Verificação se já existe pedido de portabilidade em andamento
    
    Regra: Um mesmo contrato de Crédito Pessoal Clean não pode ter portabilidade em andamento em trilhos distintos
        
        Contexto:
            Dado que o cliente possua um ou mais contratos de CPC
            E já solicitou portabilidade de crédito via Open Finance ou via Registradora


Cenário: Cliente que solicitou via Registradora não pode iniciar nova solicitação do mesmo contrato via Open Finance
    Dado que o cliente possui pedido de portabilidade em andamento solicitado via Registradora
    E solicita via Open Finance novo pedido do mesmo contrato à proponente
    Quando a proponente consulta informações sobre as solicitações do cliente
    E identifica que já tem pedido em andamento solicitado via Registradora
    Então o cliente é impedido de iniciar nova solicitação via Open Finance

Cenário: Cliente que solicitou via Open Finance não pode iniciar nova solicitação do mesmo contrato via Registradora
    Dado que o cliente possui pedido de portabilidade em andamento solicitado via Open Finance
    E solicita via Registradora novo pedido do mesmo contrato à proponente
    Quando a proponente consulta informações sobre as solicitações do cliente
    E identifica que já tem pedido em andamento solicitado via Open Finance
    Então o cliente é impedido de iniciar nova solicitação via Registradora


Cenário: Cliente solicita portabilidade de dois contratos CPC via Open Finance
    Dado que o cliente possui DOIS contratos de CPC
    E um desses contratos já está com pedido de portabilidade em andamento solicitado via Open Finance
    E o cliente solicita via Open Finance novo pedido de outro contrato elegível
    Quando a proponente consulta informações sobre as solicitações do cliente
    E identifica que já tem pedido em andamento solicitado via Open Finance
    E valida que há outro contrato elegível
    Então o cliente pode iniciar nova solicitação de outro contrato via Open Finance

Cenário: Cliente com pedido em andamento via Registradora solicita portabilidade via OFB
    Dado que o cliente possui DOIS contratos de CPC
    E um desses contratos já está com pedido de portabilidade em andamento solicitados via Registradora
    E o cliente solicita via Open Finance novo pedido de outro contrato elegível
    Quando a proponente consulta informações sobre as solicitações do cliente
    E identifica que já tem pedido em andamento solicitado via Registradora
    Então o cliente pode iniciar nova solicitação de outro contrato via Open Finance


Cenário: Cliente que NÃO possui solicitação em andamento pode prosseguir com nova solicitação
    Dado que o cliente não possui pedido de portabilidade em andamento
    E solicita novo pedido à proponente
    Quando a proponente consulta informações sobre as solicitações do cliente
    E identifica que tem NÃO há pedido em andamento
    Então o cliente pode prosseguir com a solicitação