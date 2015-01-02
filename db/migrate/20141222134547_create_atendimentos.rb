class CreateAtendimentos < ActiveRecord::Migration
  def change
    create_table :atendimentos do |t|
      t.date :data
      t.string :assunto
      t.references :cliente, index: true
      t.references :usuario, index: true
      t.references :atendente, index: true
      t.references :area, index: true

      t.timestamps
    end
  end
end
