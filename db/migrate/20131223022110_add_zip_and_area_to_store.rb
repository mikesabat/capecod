class AddZipAndAreaToStore < ActiveRecord::Migration
  def change
    add_column :stores, :zip, :integer
    add_column :stores, :area, :string
  end
end
