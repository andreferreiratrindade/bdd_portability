Feature: Mapeamento dos dados necessários

Durante o processo de solicitação de portabilidade considere que o cliente
já possui uma relação com a Instituição Credora e está iniciando ou mantendo uma relação com a Instituição Proponente.
Ambas as instituições já dispõem dos dados cadastrais do cliente via Open Finance.
O cliente deseja realizar a portabilidade de crédito.

Scenario: Proponente envia dados para solicitar portabilidade de crédito
Given a Proponente pede a Credora acesso aos dados de contrato do Cliente
And a Proponente requer os dados obrigatórios:
  | Campo                        | Valor                               |
  | CPF                          | <CPF do Cliente>                    |
  | Número do contrato           | <Número do contrato>                |
  | Dados da operação de crédito | <Dados da operação de crédito>      |
  | Proposta de crédito          | <Proposta da Instituição Proponente> |
When os dados forem mapeados
And os campos obrigatórios validados
Then a Credora deve processar a solicitação de portabilidade
And conceder os dados à Proponente

Scenario: Falha na solicitação ao não enviar os dados necessários
  Given que o Cliente deseja realizar a portabilidade de crédito
  When o Cliente tenta enviar a solicitação de portabilidade via API sem preencher os dados mínimos exigidos
  Then a API deve rejeitar a solicitação
  And e retornar uma mensagem de erro informando a ausência dos dados obrigatórios de acordo com o Art. 7º da Resolução CMN nº 5.057

Scenario: IF proponente avalia dados do cliente
  Given que a Instituição Proponente está avaliando a viabilidade da portabilidade para o Cliente
  And a Instituição Proponente consulta as APIs de Dados Transacionais
  When a consulta é realizada com sucessso
  Then a API deve retornar se os dados trafegados são suficientes para a solicitação de portabilidade 
  And identifica a necessidade de ajustes
  And a API deve verificar se o Cliente já forneceu o consentimento necessário e, caso não tenha fornecido, solicitar através do fluxo de compartilhamento de dados transacionais

Scenario: Instituição proponente não pode consultar dados do cliente sem o consentimento
  Given que a Instituição Proponente está avaliando a viabilidade da portabilidade para o Cliente
  When a Instituição Proponente acessa as APIs de Dados Transacionais sem o consentimento prévio do Cliente
  Then a API deve bloquear o acesso e solicitar o consentimento do Cliente antes de prosseguir com a solicitação de portabilidade

Scenario: IF proponente consulta se a solicitação precisa de ajustes
  Given que a Instituição Proponente está utilizando as APIs de Dados Transacionais
  And consulta os dados da solicitação
  When a Instituição Proponente avança com a solicitação de portabilidade
  Then a API deve identificar qualquer ajuste necessário
  And informar os ajustes necessários


        Scenario: Viabilizar um processo de consentimento duplo
            Given que o processo de portabilidade está em andamento
             When eu implemento o processo de consentimento duplo na instituição Proponente
             Then o consentimento duplo deve ser testado e implementado com sucesso


        Scenario: Desenvolver regra para recusar solicitações simultâneas de portabilidade
            Given que eu estou configurando regras de portabilidade
             When eu desenvolvo uma regra para recusar solicitações simultâneas
             Then as tentativas simultâneas devem ser sinalizadas e recusadas garantindo a antecedência do processo


        Scenario: Mapear e definir as mensagens ou alertas a serem exibidos
            Given que eu estou configurando notificações no sistema
             When eu defino mensagens para situações como aprovação de crédito ou ausência de proposta
             Then as mensagens devem ser claras e informativas, melhorando a experiência do usuário


        Scenario: Permitir que o cliente receba e aceite contrapropostas via canal digital
            Given que um cliente está usando o canal digital
             When o cliente recebe uma contraproposta
             Then o cliente deve poder aceitar ou recusar a contraproposta digitalmente


        Scenario: Prevenir o redirecionamento para o ambiente da instituição credora
            Given que o cliente está visualizando as condições operacionais do novo contrato
             When o cliente prossegue com a solicitação de portabilidade
             Then o fluxo deve ser mantido dentro do ambiente da instituição proponente sem redirecionamento


        Scenario: Avaliar a necessidade de criar uma regra para impedir a continuidade da portabilidade
            Given que eu estou avaliando a viabilidade da portabilidade
             When a nova prestação ou prazo é superior ao contrato original
             Then a portabilidade deve ser impedida ou solicitar um consentimento específico do cliente


        Scenario: Prever mecanismos para gerenciar situações de devolução de TED ou bloqueios
            Given que eu estou gerenciando a solicitação de portabilidade
             When situações de devolução de TED ou bloqueios ocorrem
             Then um mecanismo deve ser implementado para prevenir a blindagem do contrato mantendo a integridade do processo


#Seguem abaixo os exemplos de cenários de testes negativos; Caminho triste





Scenario: Dados insuficientes nas APIs para suportar a solicitação de portabilidade
  Given que eu estou acessando as APIs de dados transacionais
  When eu tento iniciar o processo de portabilidade com dados incompletos
  Then o sistema deve detectar a insuficiência dos dados e bloquear o processo, exibindo uma mensagem de erro


Scenario: Falha na implementação do processo de consentimento duplo
  Given que o processo de portabilidade está em andamento
  When o consentimento duplo não é fornecido ou é fornecido apenas por uma parte
  Then o sistema deve impedir o avanço do processo de portabilidade e notificar a ausência do consentimento completo


Scenario: Tentativa de realizar solicitações simultâneas de portabilidade
  Given que uma solicitação de portabilidade está em andamento
  When eu tento iniciar uma segunda solicitação simultânea
  Then o sistema deve bloquear a nova solicitação e exibir uma mensagem informando que já existe uma solicitação em andamento


Scenario: Tentativa de realizar solicitações simultâneas de portabilidade
  Given que uma solicitação de portabilidade está em andamento
  When eu tento iniciar uma segunda solicitação simultânea
  Then o sistema deve bloquear a nova solicitação e exibir uma mensagem informando que já existe uma solicitação em andamento


Scenario: Falha na exibição de mensagens ou alertas importantes
  Given que eu estou configurando notificações no sistema
  When um evento importante, como a ausência de proposta, ocorre
  Then o sistema deve falhar na exibição da mensagem de alerta, deixando o usuário sem informação


Scenario: Não permitir que o cliente receba e aceite contrapropostas via canal digital
  Given que um cliente está usando o canal digital
  When o cliente tenta acessar uma contraproposta
  Then o sistema deve falhar ao apresentar a contraproposta ou impedir que o cliente a aceite digitalmente


Scenario: Redirecionamento para o ambiente da instituição credora após exibir as condições operacionais
  Given que o cliente está visualizando as condições operacionais do novo contrato
  When o cliente prossegue com a solicitação de portabilidade
  Then o sistema deve redirecionar erroneamente o cliente para o ambiente da instituição credora, interrompendo o fluxo no ambiente da proponente


Scenario: Permitir continuidade da portabilidade com nova prestação ou prazo superior ao contrato original sem consentimento
  Given que a nova prestação ou prazo é superior ao contrato original
  When a portabilidade continua sem o consentimento específico do cliente
  Then o sistema deve permitir incorretamente a continuidade da portabilidade, resultando em uma condição desfavorável para o cliente


Scenario: Falha na prevenção de blindagem durante a solicitação de portabilidade
  Given que eu estou gerenciando a solicitação de portabilidade
  When situações de devolução de TED ou bloqueios ocorrem
  Then o sistema deve falhar ao prevenir a blindagem do contrato, comprometendo a integridade do processo
