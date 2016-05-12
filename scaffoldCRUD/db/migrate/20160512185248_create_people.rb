class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.integer :age
      t.date :birthday
      t.boolean :status

      t.timestamps null: false
    end
  end
end
