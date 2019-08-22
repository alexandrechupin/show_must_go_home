class AddGinTonicToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_index :spaces, :equipment, using: 'gin'
  end
end
