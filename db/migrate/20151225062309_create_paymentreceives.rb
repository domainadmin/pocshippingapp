class CreatePaymentreceives < ActiveRecord::Migration
  def change
    create_table :paymentreceives do |t|
      t.string :clientname
      t.string :clientcom
      t.text :desc
      t.string :invoiceno
      t.date :invdate
      t.integer :cbendamt
      t.string :chequen
      t.string :chqdet
      t.integer :pocbendamt

      t.timestamps null: false
    end
  end
end
