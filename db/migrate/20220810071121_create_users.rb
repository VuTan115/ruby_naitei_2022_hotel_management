class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :password_disgest, null: false
      t.text :address
      t.string :phone_number
      t.boolean :activated, default: false
      t.integer :role, default: 0

      t.timestamps
    end
  end
end
