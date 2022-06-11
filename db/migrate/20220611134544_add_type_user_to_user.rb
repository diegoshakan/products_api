class AddTypeUserToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :type_user
  end
end
