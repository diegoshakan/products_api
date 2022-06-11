class CreateProductVariations < ActiveRecord::Migration[7.0]
  def change
    create_table :product_variations do |t|
      t.string :situation
      t.references :product, null: false, foreign_key: true
      t.references :color, null: false, foreign_key: true
      t.references :size, null: false, foreign_key: true

      t.timestamps
    end
  end
end
