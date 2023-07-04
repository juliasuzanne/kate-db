class RemoveNameFromDrawings < ActiveRecord::Migration[7.0]
  def change
    remove_column :drawings, :name, :string
  end
end
