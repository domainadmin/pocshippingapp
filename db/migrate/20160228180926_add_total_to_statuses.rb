class AddTotalToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :total, :integer
  end
end
