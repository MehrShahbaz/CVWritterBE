class CreateJobs < ActiveRecord::Migration[7.1]
  def change
    create_table :jobs do |t|
      t.string :name, null: false, limit: 255
      t.string :description, null: false
      t.string :url, null: false
      t.string :user_details, null: true
      t.references :organization, null: true, foreign_key: true

      t.timestamps
    end
  end
end