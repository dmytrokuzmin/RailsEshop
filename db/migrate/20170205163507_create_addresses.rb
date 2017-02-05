class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :country
      t.string :city
      t.string :address_line1
      t.string :address_line2
      t.string :zip_postal_code
      t.string :phone_number

      t.timestamps
    end
  end
end
