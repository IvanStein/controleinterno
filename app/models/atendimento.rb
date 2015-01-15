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

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |atendimento|
        csv << atendimento.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Atendimento.create! row.to_hash
    end
  end

end
