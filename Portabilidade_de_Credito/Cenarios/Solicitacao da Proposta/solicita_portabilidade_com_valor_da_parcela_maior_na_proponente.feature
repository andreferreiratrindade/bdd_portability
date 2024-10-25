Feature: Solicitação de portabilidade com valor da parcela maior do que o valor atual do contrato

    Caso o cliente receba uma porposta com o valor da parcela superior ao valor atual do contrato.

Background:
    Given o cliente acessou aplicativo do proponente
    And permitiu compartilhamento de dados através da credora
    And selecionou um contrato para realizar portabilidade

Scenario: Proposta com valor da parcela superior ao contrato atual com aceite do cliente
    Given o cliente receba uma proposta dada pelo proponente com o valor da parcela superior ao valor da parcela do contrato atual
    When o proponente solicita ao cliente uma confirmação de ciencia dos valores descritos na proposta
    Then o proponente bloqueia o botão de "solicitar portabilidade"
    Then o cliente realiza confirmação da ciencia dos valores descritos na proposta
    Then a proponente habilita o botão de "solicitar portabilidade"

Scenario: Proposta com valor da parcela superior ao contrato atual sem o aceite do cliente
    Given o cliente receba uma proposta dada pelo proponente com o valor da parcela superior ao valor da parcela do contrato atual
    When o proponente solicita ao cliente uma confirmação de ciencia dos valores descritos na proposta
    Then o proponente bloqueia o botão de "solicitar portabilidade"
    Then o cliente não realiza confirmação do aceite da proposta

#Duvida: O que acontece se o valor da proponente for exatamente igual?
