class CreateAtendentes < ActiveRecord::Migration
  def change
    create_table :atendentes do |t|
      t.string :name

      t.timestamps
    end
  end
end
