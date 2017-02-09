class AddCustomerDataToCustomer < ActiveRecord::Migration[5.0]

  def self.up
    add_column :customers, :address_id, :integer
    add_column :customers, :first_name, :string
    add_column :customers, :last_name, :string
  end

  def self.down
    remove_column :customers, :address_id
    remove_column :customers, :first_name
    remove_column :customers, :last_name
  end
end
