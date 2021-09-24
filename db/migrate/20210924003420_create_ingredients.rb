class CreateIngredients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.decimal :calories, precision: 10, scale: 2
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
