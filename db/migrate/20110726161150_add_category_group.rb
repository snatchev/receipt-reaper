class AddCategoryGroup < ActiveRecord::Migration
  def self.up
    add_column :categories, :group, :string
  end

  def self.down
    remove_column :categories, :group
  end
end
