#language: pt



Funcionalidade: Cep
    sendo que um usuario previamente cadastrado
    quero poder acessar o sistema
    para que eu possa consultar meu cep


Cenario: Consulta com sucesso
    Dado que acesso a pagina 
    Quando submeto com minhas credenciais na url 
    Então devo aparecer na tela minhas informações de acordo com o cep

Cenario: Passando um cep
    Dado que acesso a pagina 
    Quando passo meu cep 
    Então devo aparecer na tela minhas informações 