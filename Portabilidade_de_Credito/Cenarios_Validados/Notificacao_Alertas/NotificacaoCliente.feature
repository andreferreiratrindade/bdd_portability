# language: pt

Funcionalidade: Notificações e alertas para o cliente
    Não importa como será a comunicação da proponente com o cliente, nem o conteúdo exato da mensagem.
    O foco deve ser o momento em que deve ocorrer e o sentido da mensagem.

Regra: É necessário conter ao menos uma notificação ao cliente sobre a etapa atual da jornada
    Contexto: 
        Dado o cliente já realizou pedido de portabilidade à proponente
        E a proponente notificou que recebeu o pedido com sucesso

Cenário: Proponente notifica o cliente sobre a importancia do consentimento para prosseguir
    Dado que o cliente precisa dar o consentimento de acesso aos dados do contrato
    Quando o cliente informa a credora
    Então a proponente notifica o cliente sobre o início do processo de consentimento

Cenário: Proponente notifica o cliente que recebeu pedido e estima prazo de retorno
    Dado que o cliente seleciona o contrato que deseja portar
    Quando o cliente confirma à proponente o contrato que deseja portar
    Então a proponente notifica o cliente sobre o recebimento da solicitação
    E informa o prazo estimado para análise da solicitação

Cenário: Proponente notifica o cliente sobre o aceite e formalização da proposta
    Dado que o cliente acessa a proposta de portabilidade
    E o cliente acessa as condições do pedido de portabilidade
    Quando o cliente confirma que aceita a proposta
    Então a proponente notifica o cliente que a proposta foi aceita
    E informa que o pedido seguirá para formalização
    
Cenário: Cliente vê resumo das cláusulas contratuais da operação
    Dado que o cliente está na etapa de análise do contrato da operação
    Quando o cliente acessa as condições contratuais
    Mas ainda não aceitou os termos
    Então a proponente notifica o cliente sobre a importância de aceitar os termos para continuar

Cenário: Cliente aceita os termos e proponente notifica sobre o processo de autenticação
    Dado que o cliente analisou as condições contratuais da operação de portabilidade
    Quando o cliente realiza o aceite dos termos através de processo de autenticação
    Então a proponente notifica o cliente que o processo de aceite foi realizado com sucesso

Cenário: Proponente notifica o cliente sobre o sucesso do pedido e informa prazo para conclusão
    Dado que o cliente aceitou os termos contratuais da operação de portabilidade
    Quando o cliente conclui a jornada da solicitação
    Então a proponente notifica o cliente que o pedido foi realizado com sucesso
    E ressalta que o pedido será enviado à credora
    E informa o prazo para conclusão deste processo

Cenário: Credora notifica o cliente sobre a portabilidade e contraproposta
    Dado que o cliente finalizou a solicitação de portabilidade com a proponente
    Quando credora recebe o pedido da proponente
    Então a credora notifica o cliente que há um pedido de portabilidade em andamento
    E informa o cliente qual a instituição que fez o pedido
    E informa o prazo para aceitar uma eventual contraproposta
    E informa que após o prazo sem resposta a portabilidade será executada

Cenário: Credora notifica o cliente que o mesmo aceitou a contraproposta
    

Cenário: Proponente notifica o cliente que o mesmo aceitou a proposta
Cenário: Credora apresenta mensagem simples de erro e não mostra código HTTP
Cenário: Proponente apresenta mensagem simples de erro e não mostra código HTTP