class CarroObserver < ActiveRecord::Observer

	def after_create(carro)
		Notifier.novo_carro(carro, "seu_email").deliver
	end
end
