class Atendimento < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :usuario
  belongs_to :atendente
  belongs_to :area


  validates :assunto, presence: true
	validates :assunto, length: { minimum: 2 }
	validates :area, presence: true
	validates :cliente, presence: true
	validates :atendente, presence: true
	validates :usuario, presence: true

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |atendimento|
        csv << atendimento.attributes.values_at(*column_names)
      end
    end
  end
end
