class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.references :customer, index: true
      t.string :payment_method
      t.string :reference
      t.text :notes

      t.timestamps
    end
  end
end
