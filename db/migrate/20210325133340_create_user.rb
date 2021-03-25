class CreateUser < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :first_name,         null: false, default: ""
      t.string :last_name,          null: false, default: ""
      t.string :password,           null: false, default: ""


      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :password,       unique: true
  end
end