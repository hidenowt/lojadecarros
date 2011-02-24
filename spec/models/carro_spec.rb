require 'spec_helper'

describe Carro do

	include CarroSpec # inclua essa linha

	before :each do
		@carro = Carro.new
	end

	# mantenha os outros exemplos aqui

	it "deveria ser novo" do
		@carro.should be_novo
	end

	it "deveria ter comissao 5%" do
		@carro.preco = 20000
		@carro.calcula_comissao.should be == 1000.0
	end

	# inclua esse exemplo
	it "deveria calcular comissao" do
		@carro.preco = 20000
		@comissao = 1000

		lambda {
			@carro.calcula_comissao
		}.should ter_valor(@comissao)
	end

	it "testando fabrica" do
		celta = Factory.build(:carro)
		celta.nome.should be == 'celta'
		celta.descricao.should be == 'vendo celta usado, ano 2001'
		celta.preco.should be == 17000

		fox = Factory.build(:carro, :nome => 'fox', :descricao => 'vendo fox seminovo', :preco => 30000)
		fox.nome.should be == 'fox'
		fox.descricao.should be == 'vendo fox seminovo'
		fox.preco.should be == 30000
	end
end
