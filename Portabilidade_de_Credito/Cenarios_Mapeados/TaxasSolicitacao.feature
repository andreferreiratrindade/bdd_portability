# language: pt

Funcionalidade: Instituição proponente apresenta dados da proposta

Contexto:
    Dado que o cliente solicitou a portabilidade de crédito
    E a deu consentimento à instituição proponente para acessar os dados do contrato
    E a instituição proponente está apresentando sua proposta ao cliente pelo app

Cenário: taxa anual
    Dado que o cliente está na etapa de analisar a proposta da proponente
    Quando o sistema exibe a tela com informações da proposta
    Então exibe o valor da taxa anual

Cenário: taxa nominal
    Dado que o cliente está na etapa de analisar a proposta da proponente
    Quando o sistema exibe a tela com informações da proposta
    Então exibe o valor da taxa nominal

Cenário: taxa efetiva
    Dado que o cliente está na etapa de analisar a proposta da proponente
    Quando o sistema exibe a tela com informações da proposta
    Então exibe o valor da taxa efetiva
   
Cenário: taxa CET
    Dado que o cliente está na etapa de analisar a proposta da proponente
    Quando o sistema exibe a tela com informações da proposta
    Então exibe o valor da taxa CET custo efetivo total

Cenário: Prazo da operação
    Dado que o cliente está na etapa de analisar a proposta da proponente
    Quando o sistema exibe a tela com informações da proposta
    Então exibe detalhes sobre o prazo da operação

Cenário: Sistema de amortização
    Dado que o cliente está na etapa de analisar a proposta da proponente
    Quando o sistema exibe a tela com informações da proposta
    Então exibe o valores sobre o sistema de amortização

Cenário: Valor das prestações
    Dado que o cliente está na etapa de analisar a proposta da proponente
    Quando o sistema exibe a tela com informações da proposta
    Então exibe o valor da das prestações

# Cenário para outro arquivo .feature
Cenário: quantidade de pedidos de portabilidade
    Dado que a proponente recebe os dados de contrato do cliente pela credora
    Quando o sistema compila as informações do cliente
    Então é exibido o dado sobre a quantidade de pedidos de portabilidade já realizados pelo cliente
