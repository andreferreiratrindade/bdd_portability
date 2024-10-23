# language: pt

Funcionalidade: Cliente solicita Portabilidade de Crédito
  O Cliente possui um contrato de crédito na Instituição Credora 
  e deseja fazer a portabilidade de crédito para a Instituição Proponente,
  buscando melhores condições de pagamento.
  
  Contexto: 
    Dado que o cliente tem conta corrente em duas instituições financeiras
    E possui contrato de crédito em uma dessas instituições
    # Cliente também pode solicitar portabilidade sem ser cliente da proponente. Elaborar novo cenário

Cenário: Cliente faz pedido de portabilidade
  Dado que o cliente está na jornada com a instituição proponente
  E solicita portabilidade de crédito
  Quando o cliente seleciona o contrato a ser portado
  E confirma o pedido de portabilidade
  Então instituição proponente notifica que recebeu o pedido com sucesso


Cenário: Cliente solicita portabilidade de volta para instituição original
  Dado que o cliente concluiu a portabilidade da <Instituição A> para <Instituição B>
  Quando o cliente solicita portabilidade da <Instituição B> para retornar à <Instituição A>
  Então o pedido é recebido pela <Instituição A>
  Mas cabe a <Instituição A> aceitar ou não seguir com a solicitação
