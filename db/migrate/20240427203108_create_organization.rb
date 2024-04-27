class CreateOrganization < ActiveRecord::Migration[7.1]
  def change
    create_table :organizations do |t|
      t.string :name, null: false, limit: 255
      t.string :url, null: false

      t.timestamps
    end

    add_index :organizations, :name, unique: true
  end
end
