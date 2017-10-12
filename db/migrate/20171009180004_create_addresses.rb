class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.integer :door_no
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.belongs_to :contact
      t.timestamps
    end
  end
end
