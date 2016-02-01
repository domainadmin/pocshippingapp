class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.string :tokeno
      t.string :exrelno
      t.string :contno
      t.string :custno
      t.string :delito
      t.string :type
      t.string :size
      t.integer :custinc
      t.integer :weight
      t.integer :tollcharge
      t.integer :tokencharge
      t.integer :detcharge
      t.integer :triprent
      t.integer :triptotamt
      t.string :drivname
      t.integer :driverbata
      t.integer :wghmntbata
      t.integer :custbata
      t.integer :pocdrivbata

      t.timestamps null: false
    end
  end
end
