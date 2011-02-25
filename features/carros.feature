#language: pt

Funcionalidade: Carros
	Para vender meu carro
	Como um usuario do sistema
	Eu quero registrar meu carro

	Contexto:
		Dado que estou na pagina inicial

	Cenario: Registrando um carro
		E preencho o campo "carro[nome]" com "Monza"
		E preencho o campo "carro[descricao]" com "Muito bom estado."
		E preencho o campo "carro[preco]" com "5000"
		E clico no botao "Anunciar!"
		Entao eu deveria ver "Muito bom estado."

	Cenario: Busca
		Dado que os seguintes carros existem:
		| nome  | preco | descricao |
		| monza | 1000  | velho     |
		E preencho o campo "busca" com "monza"
		E clico no botao "busca"
		Entao eu deveria ver "monza"