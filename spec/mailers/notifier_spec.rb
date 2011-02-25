require "spec_helper"

describe Notifier do
  describe "email de carro novo" do
  	carro = Factory.create(:carro)

  	let(:mail) { Notifier.novo_carro(carro, "seu_email") }

  	it "cabeçalhos" do
  		mail.subject.should eq(carro.nome)
  		mail.to.should 		eq(["seu_email"])
  		mail.from.should 	eq(["lojacarro@caelum.com.br"])
  	end

  	it "exibe o corpo a mensagem" do
  		mail.body.encoded.should match("Novo carro cadastrado!")
  		mail.body.encoded.should match(carro.nome)
  		mail.body.encoded.should match(carro.descricao)
  		mail.body.encoded.should match(carro.preco.to_s)
  	end
  end
end