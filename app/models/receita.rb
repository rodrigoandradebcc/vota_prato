class Receita < ActiveRecord::Base
	validates_presence_of  :conteudo, message: " - deve ser preenchido"
	belongs_to :prato

	validate :validates_presence_of_more_than_one_restaurante
	private
	def validates_presence_of_more_than_one_restaurante
		errors.add("restaurantes","deve haver menos um restaurante") if restaurantes.empty?
	end

end