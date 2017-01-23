class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name, limit: 120
      t.string :surname, limit: 120
      t.string :phone_number, limit: 16
      t.string :email, limit: 240
      t.string :address, limit: 240
      t.string :city, limit: 120
      t.string :zip, limit: 16
      t.string :state, limit: 120
      t.string :country, limit: 2
      t.text :notes

      t.timestamps
    end
    add_index :contacts, :name
    add_index :contacts, :surname
    add_index :contacts, :email
  end
end
