class CreateDonations < ActiveRecord::Migration
  def self.up
    create_table :donations do |t|
      t.string :contact_name
      t.string :company_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :phone
      t.string :email
      t.text :donation_description
      t.integer :donation_value_in_cents
      t.date :pickup_date
      t.string :source
      t.boolean :contact_again, :default => false
      t.string :status, :default => "to_be_picked_up"
      t.integer :sale_price_in_cents

      t.timestamps
    end
  end

  def self.down
    drop_table :donations
  end
end
