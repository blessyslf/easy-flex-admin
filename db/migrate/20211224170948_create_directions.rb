class CreateDirections < ActiveRecord::Migration[6.1]
  def change
    create_table :directions do |t|
      t.string :name
      t.string :title
      t.text :content
      

      t.timestamps
    end
  end
end
