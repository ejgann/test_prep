class AddDateOfTestToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :date_of_test, :datetime
  end
end
