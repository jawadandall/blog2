class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.int :stock
      t.string :type
      t.string :gender

      t.timestamps
    end
  end
end
