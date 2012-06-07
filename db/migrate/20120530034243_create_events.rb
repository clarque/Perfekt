class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :occurs_at
      t.string :start_time
      t.string :end_time
      t.string :arrival_time
      t.integer :invited_count
      t.integer :attended_count
      t.integer :crew_count
      t.integer :volunteer_count
      t.boolean :valet

      t.timestamps
    end
  end
end
