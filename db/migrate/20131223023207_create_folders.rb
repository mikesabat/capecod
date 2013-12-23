class CreateFolders < ActiveRecord::Migration
  def change
    create_table :folders do |t|
      t.integer :store_id
      t.string :season

      t.timestamps
    end
  end
end
