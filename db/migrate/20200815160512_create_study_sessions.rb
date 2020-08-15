class CreateStudySessions < ActiveRecord::Migration[6.0]
  def change
    create_table :study_sessions do |t|
      t.datetime :date
      t.integer :rating
      t.string :comment
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :activity, null: false, foreign_key: true

      t.timestamps
    end
  end
end
