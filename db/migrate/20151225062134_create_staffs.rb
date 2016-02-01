class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :staffname
      t.string :design
      t.integer :workingdays
      t.integer :salary
      t.integer :allowance

      t.timestamps null: false
    end
  end
end
