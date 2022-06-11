class CreateSizes < ActiveRecord::Migration[7.0]
  def change
    create_table :sizes do |t|
      t.string :label
      t.string :situation

      t.timestamps
    end
  end
end
