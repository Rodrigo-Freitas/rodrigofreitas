#language: pt
#utf-8

Funcionalidade: Cadastrar Funcionário
Eu como analista de RH
Quero cadastrar um novo funcionário
Para resgistrar suas informações

@prim
Cenario: Cadastrar dados do funcionário
Dado que esteja logado no site ORANGEHRM
Quando adicionar um funcionário
Então prencher os dados do funcionario