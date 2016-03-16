class CreateOffexps < ActiveRecord::Migration
  def change
    create_table :offexps do |t|
      t.integer :offurn
      t.integer :ofstat
      t.integer :offpp
      t.integer :offtbill
    t.integer :offintbill
      t.integer :offroomrent
      t.integer :offrent
      t.integer :offren
      t.integer :offspfee
      t.integer :offstfsal
      t.integer :offstvimed

      t.timestamps null: false
    end
  end
end
