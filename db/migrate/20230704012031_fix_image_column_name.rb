class FixImageColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :images, :user_id, :drawing_id
  end
end
