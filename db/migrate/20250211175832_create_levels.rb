class CreateLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :levels do |t|
      # adicione os campos necessários aqui
      t.string :name

      t.timestamps
    end
  end
end