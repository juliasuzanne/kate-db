class AddUseImagesToDrawings < ActiveRecord::Migration[7.0]
  def change
    add_column :drawings, :using_Images, :boolean
  end
end
