class AddTotalToOffexps < ActiveRecord::Migration
  def change
    add_column :offexps, :total, :integer
  end
end
