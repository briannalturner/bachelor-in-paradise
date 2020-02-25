class CreateMen < ActiveRecord::Migration[6.0]
  def change
    create_table :men do |t|
      t.string :name
      t.integer :age
      t.string :hometown

      t.timestamps
    end
  end
end
