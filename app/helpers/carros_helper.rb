module CarrosHelper
	def num_formatado(obj)
		number_to_currency(obj, :precision => 2, :unit => "R$ ", :separator => ".", :delimiter => ",")
	end
end
