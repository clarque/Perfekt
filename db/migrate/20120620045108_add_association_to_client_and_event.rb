class AddAssociationToClientAndEvent < ActiveRecord::Migration
  def up
  	change_table :events do |t|
  		t.references :client
  	end
  end
  def down
  	remove_column :events, :client_id
  end
end
