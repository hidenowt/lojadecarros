class Notifier < ActionMailer::Base
  default :from => "lojacarro@caelum.com.br"

  def novo_carro(carro, email)
  	@carro = carro
  	mail(:to => email, :subject => carro.nome)  	
  end
end
