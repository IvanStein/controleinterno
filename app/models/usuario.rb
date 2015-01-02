class Usuario < ActiveRecord::Base
	has_many :atendimento
	validates :name, presence: true
	validates :name, length: { minimum: 2 }
end
