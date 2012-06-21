class AddClientFieldsToEvent < ActiveRecord::Migration
  def up
  	change_table :events do |t|
      t.string :client_name
      t.string :client_address
      t.string :client_city
      t.string :client_state
      t.string :client_zip
      t.string :client_home_phone
      t.string :client_work_phone
      t.string :client_mobile_phone
      t.string :client_email
  	end
  end
  def down
  	remove_column :events, :client_name
    remove_column :events, :client_address
    remove_column :events, :client_city
    remove_column :events, :client_state
    remove_column :events, :client_zip
    remove_column :events, :client_home_phone
    remove_column :events, :client_work_phone
    remove_column :events, :client_mobile_phone
    remove_column :events, :client_email
  end
end
