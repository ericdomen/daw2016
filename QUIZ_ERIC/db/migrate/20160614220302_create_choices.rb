class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :text
      t.integer :correct
      t.references :question, index: true, foreign_key: {on_delete: :cascade}

      t.timestamps null: false
    end
  end
end
