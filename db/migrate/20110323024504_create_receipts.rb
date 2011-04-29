class CreateReceipts < ActiveRecord::Migration
  def self.up
    create_table :receipts do |t|
      t.belongs_to :category

      t.string :name
      t.date :purchase_date
      t.integer :amount
      t.boolean :business_expense
      t.timestamps
      t.text :notes
      #boolean is TRUE, FALSE, or NULL (NULL meaning nothing)
    end

    create_table :accounts do |t|
      t.string :name
      t.boolean :cash
    end

    create_table :categories do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :categories
    drop_table :accounts
    drop_table :receipts
  end
end
