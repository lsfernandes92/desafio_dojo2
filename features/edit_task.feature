#language: pt
#utf-8

@Editar
Funcionalidade: Editar Task
	Eu como usuario
	Quero editar uma task

	Contexto: Que eu esteja logado no sistema
		Dado que esteja logado no sistema

	@done
	Esquema do Cenario: Editar Task
		Quando pesquisar pela task "<subject>"
		Então será apresentada a tela de edição
		Então irei alterar o status "<status>"
		E salvar
		Então sera apresentada tela de task overview
		Exemplos:
		| subject				| status				| priority		|
		| TODO semana		| Pending Input	| High				|
