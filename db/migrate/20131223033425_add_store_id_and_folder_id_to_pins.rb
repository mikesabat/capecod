class AddStoreIdAndFolderIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :store_id, :integer
    add_column :pins, :folder_id, :integer
  end
end
