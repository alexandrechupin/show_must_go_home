class AddEquipmentToSpaces < ActiveRecord::Migration[5.2]
  def change
    add_column :spaces, :equipment, :string, array: true, default: []
  end
end
