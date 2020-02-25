class CreateRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :relationships do |t|
      t.integer :woman_id
      t.integer :man_id
      t.string :status

      t.timestamps
    end
  end
end
