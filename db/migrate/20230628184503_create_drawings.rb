class CreateDrawings < ActiveRecord::Migration[7.0]
  def change
    create_table :drawings do |t|
      t.string :name
      t.string :tags
      t.string :description
      t.string :url

      t.timestamps
    end
  end
end
