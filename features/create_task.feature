#language: pt
#utf-8

@Cadastro
Funcionalidade: Cadastrar Task
	Eu como usuario
	Quero cadastrar uma task

Contexto: Que eu esteja logado no sistema
	Dado que esteja logado no sistema

@done
Esquema do Cenario: Cadastrar Task
	Quando clicar no menu Create task
	E preencher "<subject>", "<status>", "<priority>"
	Então sera apresentada tela de task overview
	Exemplos:
	| subject				| status				| priority		|
	| TODO semana		| In Progress		| High				|
	| TODO mes 			| Pending Input | Medium			|
