class ChangeAddressName < ActiveRecord::Migration[5.2]
  def change
    rename_column :spaces, :address, :street
  end
end
