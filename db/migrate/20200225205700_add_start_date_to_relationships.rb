class AddStartDateToRelationships < ActiveRecord::Migration[6.0]
  def change
    add_column :relationships, :start_date, :date
  end
end
