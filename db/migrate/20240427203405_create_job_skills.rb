class CreateJobSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :job_skills do |t|
      t.references :skill, foreign_key: true, null: false
      t.references :job, foreign_key: true, null: false

      t.timestamps
    end
  end
end
