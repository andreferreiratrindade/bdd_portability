# language: pt

Cenário: Cliente solicita portabilidade para proponentes diferentes via OFB
    Dado que o cliente possui DOIS contratos de CPC na <Credora A>
    E o cliente solicita portabilidade de um desses contratos via OFB para <Proponente B>
    E faz outra solicitação para <Proponente C>
    Quando a <Credora A> recebe os pedidos
    E o cliente aceita os termos das proponentes
    Então a solicitação do cliente prossegue com sucesso

Cenário: Cliente solicita portabilidade para inverter as credoras
    Dado que o cliente possui DOIS contratos de CPC
    E um está na <Instituição A>
    E outro está na <Instituição B>
    E o cliente solicita portabilidade via OFB da <Instituição A> para <Instituição B>
    E faz também solicitação do contrato que está na <Instituição B> para <Instituição A>
    Quando as instituições validam os pedidos
    E o cliente aceita os termos
    Então as solicitações do cliente prosseguem com sucesso
