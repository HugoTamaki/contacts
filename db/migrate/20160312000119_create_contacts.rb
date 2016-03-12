class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :number
      t.integer :carrier_id

      t.timestamps null: false
    end
  end
end