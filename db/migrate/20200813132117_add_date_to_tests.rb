class AddDateToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :date, :datetime
  end
end
