class CreateBooks < ActiveRecord::Migration[7.2]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :auther
      t.boolean :available

      t.timestamps
    end
  end
end
