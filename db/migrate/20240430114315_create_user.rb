class CreateUser < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :uid, null: false
      t.string :email, null: false
      t.string :details, null: false
      t.string :name

      t.timestamps
    end

    add_index :users, :uid, unique: true
    add_index :users, :email, unique: true
  end
end