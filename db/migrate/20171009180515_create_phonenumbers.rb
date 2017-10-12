class CreatePhonenumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :phonenumbers do |t|
      t.string :phone_number
      t.belongs_to :contact
      t.timestamps
    end
  end
end
