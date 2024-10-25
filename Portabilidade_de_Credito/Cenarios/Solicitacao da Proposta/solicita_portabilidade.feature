# language: pt

Feature: Cliente solicita Portabilidade de Crédito
  O Cliente possui um contrato de crédito na Instituição Credora
  e deseja fazer a portabilidade de crédito para a Instituição Proponente,
  buscando melhores condições de pagamento.

Scenario: Cliente faz pedido de portabilidade
  Given que o cliente está na jornada com a instituição proponente
  And solicita portabilidade de crédito
  When o cliente seleciona o contrato a ser portado
  And o proponente identifica que o valor da parcela é menor que o valor da parcela no contrato atual
  Then o proponente habilita o botão "Solicitar Portabilidade"
  Then o cliente aciona o botão "Solicitar Portabilidade"
  Then o proponente notifica ao cliente que recebeu a solicitação de portabilidade com sucesso
