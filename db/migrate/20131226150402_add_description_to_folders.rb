class AddDescriptionToFolders < ActiveRecord::Migration
  def change
    add_column :folders, :description, :text
  end
end
