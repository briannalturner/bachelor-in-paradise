class AddEndDateToRelationships < ActiveRecord::Migration[6.0]
  def change
    add_column :relationships, :end_date, :date, default: nil
  end
end
