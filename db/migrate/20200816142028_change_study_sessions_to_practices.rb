class ChangeStudySessionsToPractices < ActiveRecord::Migration[6.0]
  def change
    rename_table :study_sessions, :practices
  end
end
