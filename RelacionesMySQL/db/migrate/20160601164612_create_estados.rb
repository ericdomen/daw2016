class CreateEstados < ActiveRecord::Migration
  def change
    create_table :estados do |t|
      t.string :nombre
      t.string :pais

      t.timestamps null: false
    end
  end
end
