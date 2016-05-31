class CreatePigs < ActiveRecord::Migration
  def change
    create_table :pigs do |t|
      t.string :name
      t.integer :age
      t.float :with

      t.timestamps null: false
    end
  end
end
