class CreatePrestamos < ActiveRecord::Migration
  def change
    create_table :prestamos do |t|
      t.date :fecha_prestamo
      t.date :fecha_entrega
      t.integer :libro_id

      t.timestamps null: false
    end
  end
end
