class CreateAccounts < ActiveRecord::Migration
  def self.up
    create_table :accounts do |t|
      t.string :name
      t.timestamps
    end
    add_column :receipts, :account_id, :integer
  end

  def self.down
    remove_column :receipts, :account_id
    drop_table :accounts
  end
end
