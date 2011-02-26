require 'rubygems'
require 'rspec'
require 'lib/info.rb'

describe Info do
	it "deve conter uma mensagem no retorno do metodo texto" do
		Info.texto.should be == "Projeto desenvolvido por Herminio Torres na caelum"
	end
end
