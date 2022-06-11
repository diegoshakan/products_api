class CreateTypeUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :type_users do |t|
      t.string :label
      t.text :description
      t.string :situation

      t.timestamps
    end
  end
end
