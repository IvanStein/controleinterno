class Cliente < ActiveRecord::Base
	has_many :atendimentos
	validates :name, presence: true
	validates :name, length: { minimum: 2 }
end