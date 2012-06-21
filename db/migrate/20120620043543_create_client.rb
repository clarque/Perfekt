class CreateClient < ActiveRecord::Migration
  def up
  	create_table :clients do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :postal_code
      t.string :country_code
      t.string :home_phone
      t.string :work_phone
      t.string :mobile_phone
      t.string :email_address
      t.timestamps
  	end
  end


  def down
  	delete_table :clients
  end
end