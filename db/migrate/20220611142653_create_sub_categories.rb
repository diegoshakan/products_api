class CreateSubCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_categories do |t|
      t.string :label
      t.string :situation
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end