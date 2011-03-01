class CarroSweeper < ActionController::Caching::Sweeper
	observe Carro

	def after_save(carro)
		clear_carros_cache(carro)
	end

	def after_destroy(carro)
		clear_carros_cache(carro)
	end

	private
		def clear_carros_cache(carro)
			expire_page(:controller => 'carros', :action => 'index')
		end
end