#language: pt
#utf-8

@Deletar
Funcionalidade: Deletar Task
	Eu como usuario
	Quero deletar uma task

	Contexto: Que eu esteja logado no sistema
		Dado que esteja logado no sistema

	@done
	Cenario: Deletar Task
		Então navegarei atá a tela de tasks
		Então será apresentada a tela de edição
		Então irei deletar a task
		E confirmar deleçãos
    Então será apresentada a tela de tasks
