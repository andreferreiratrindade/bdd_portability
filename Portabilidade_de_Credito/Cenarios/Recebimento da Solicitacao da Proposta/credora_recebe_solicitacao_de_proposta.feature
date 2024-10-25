Feature: Credora recebe solicitação de proposta pelo proponente

Background:
    Given o cliente tenha realizado uma solicitação de portabilidade para o proponente
    And o cliente tenha recebido uma mensagem de sucesso de recebimento da solicitação de portabilidade pelo proponente

Scenario: Proponente realiza o envio da solicitação de portabilidade para a Credora
    Given o cliente tenha solicitado portabilidade para um proponente
    When o proponente realiza o envio da solicitação de portabilidade para a Credora
    Then a credora recebe a solicitação de portabilidade
    And retorna de maneira imediata para o proponente os seguintes dados:
     - Código identificador do pedido de portabilidade (ex.: UUID - 54d5348c-1a3f-4ff4-a8a8-d0724fb806c6)
     - Status do pedido de portabilidade
     - Endereço do serviço de notificações (utilizado para a instituição proponente cancelar o pedido, acompanhar a situação da portabilidade, etc.)
     - Dados bancários para liquidação do contratodados bancarios para realização do pagamento

Scenario: Proponente realiza o envio da solciitação de portabilidade para a credora com número de contrato invalido
    Given o cliente tenha solicitado portabilidade para um proponente
    When o proponente realiza o envio da solicitação de portabilidade para a Credora
    And a credora ao receber a solcitação observa que o numero do contrato não existe na base de dados
    Then a credora responde para a proponente com uma mensagem de erro
