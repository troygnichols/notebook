class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_1, null: false
      t.string :street_2
      t.string :city, null: false
      t.string :state, null: false
      t.string :zip, null: false
      t.timestamps
    end
  end
end
