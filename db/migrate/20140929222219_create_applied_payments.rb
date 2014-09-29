class CreateAppliedPayments < ActiveRecord::Migration
  def change
    create_table :applied_payments do |t|
      t.references :payment, index: true
      t.references :invoice, index: true
      t.decimal :amount
      t.string :status

      t.timestamps
    end
  end
end
