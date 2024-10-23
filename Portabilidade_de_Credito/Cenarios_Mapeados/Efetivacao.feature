#Exemplos de cenários de testes positivos; Caminho feliz
Feature: Efetivação

    Descrição da feature


Scenario: Implementar regra que permita o envio de contraproposta em até 3 dias úteis
  Given que uma contraproposta está sendo preparada
  When a contraproposta é finalizada
  Then ela deve ser enviada em até 3 dias úteis pela instituição Credora


Scenario: Estabelecer regra que permita ao devedor desistir da portabilidade antes da liquidação
  Given que a portabilidade ainda não foi liquidada
  When o devedor deseja desistir da portabilidade
  Then a desistência deve ser processada de forma eficiente pela instituição Proponente


Scenario: Implementar regra para que a instituição Credora solicite a transferência dos recursos
  Given que a contraproposta não foi aceita
  When a transferência de recursos é solicitada
  Then a instituição Proponente deve realizar a transferência em até 3 dias úteis


Scenario: Implementar regra onde a instituição Credora deve confirmar o recebimento dos recursos
  Given que a transferência de recursos foi concluída
  When os recursos são recebidos pela instituição Credora
  Then o recebimento deve ser confirmado em até 2 dias úteis


Scenario: Estruturar manual com motivos padronizados de recusa
  Given que uma solicitação de portabilidade foi recusada
  When eu reviso os motivos de recusa
  Then o manual deve ser claro e abrangente, facilitando a comunicação entre as partes


Scenario: Garantir que a instituição Credora remeta um documento confirmando a efetivação
  Given que a portabilidade foi efetivada
  When a documentação de confirmação é emitida
  Then a instituição Credora deve remeter o documento à Proponente em até 2 dias úteis


Scenario: Estruturar cenários de disputa e como eles serão resolvidos
  Given que disputas podem surgir durante o processo de portabilidade
  When eu defino cenários de disputa
  Then as disputas devem ser resolvidas de forma eficiente com base em cenários predefinidos


#Seguem abaixo os exemplos de cenários de testes negativos; Caminho triste

Scenario: Falha ao enviar contraproposta dentro do prazo de 3 dias úteis
  Given que uma contraproposta está sendo preparada
  When o prazo de 3 dias úteis é ultrapassado sem o envio da contraproposta
  Then o sistema deve falhar em notificar o atraso, e o processo de portabilidade pode ser prejudicado


Scenario: Impedir a desistência do devedor antes da liquidação
  Given que a portabilidade ainda não foi liquidada
  When o devedor tenta desistir do processo
  Then o sistema deve bloquear incorretamente a desistência, forçando a continuação do processo


Scenario: Falha na solicitação de transferência dos recursos após a não aceitação da contraproposta
  Given que a contraproposta não foi aceita
  When a instituição Credora solicita a transferência dos recursos
  Then o sistema deve falhar ao realizar a transferência dentro do prazo de 3 dias úteis


Scenario: Falha na confirmação do recebimento dos recursos
  Given que a transferência de recursos foi concluída
  When os recursos são recebidos pela instituição Credora
  Then o sistema deve falhar ao confirmar o recebimento dentro do prazo de 2 dias úteis, interrompendo o processo


Scenario: Falha na clareza do manual de motivos de recusa
  Given que uma solicitação de portabilidade foi recusada
  When eu reviso os motivos de recusa
  Then o sistema deve apresentar um manual confuso e incompleto, dificultando a comunicação entre as partes


Scenario: Falha na remessa de documentação confirmando a efetivação da portabilidade
  Given que a portabilidade foi efetivada
  When a instituição Credora emite a documentação de confirmação
  Then o sistema deve falhar ao remeter o documento à Proponente dentro do prazo de 2 dias úteis, criando incerteza no processo


Scenario: Falha na resolução eficiente de disputas
  Given que uma disputa surgiu durante o processo de portabilidade
  When eu tento resolver a disputa com base nos cenários predefinidos
  Then o sistema deve falhar em resolver a disputa de forma eficiente, prolongando o conflito e prejudicando o cliente
