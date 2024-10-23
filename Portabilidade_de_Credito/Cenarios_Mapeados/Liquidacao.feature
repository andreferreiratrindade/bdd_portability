#Exemplos de cenários de testes positivos; Caminho feliz
Feature: Liquidação

    Descrição da feature


Scenario: Identificar todos os dados necessários para viabilizar a liquidação da operação
  Given que uma operação está sendo liquidada
  When eu coleto os dados necessários
  Then a API deve ser capaz de processar esses dados para viabilizar a liquidação correta


Scenario: Avaliar como deve funcionar o registro e armazenamento das informações
  Given que informações de liquidação precisam ser registradas
  When o modelo de registro é definido
  Then o modelo deve assegurar conformidade e rastreabilidade


#Seguem abaixo os exemplos de cenários de testes negativos; Caminho triste

Scenario: Falha ao identificar todos os dados necessários para a liquidação
  Given que uma operação está sendo liquidada
  When eu tento coletar os dados necessários
  Then o sistema deve falhar ao processar os dados corretamente, resultando em uma liquidação incorreta


Scenario: Falha no registro e armazenamento das informações de liquidação
  Given que informações de liquidação precisam ser registradas
  When eu defino o modelo de registro e armazenamento
  Then o sistema deve implementar um modelo inadequado, comprometendo a conformidade e rastreabilidade
