class CreateInvoiceLines < ActiveRecord::Migration
  def change
    create_table :invoice_lines do |t|
      t.string :description
      t.decimal :units, precision: 5, scale: 2
      t.decimal :unit_price, precision: 16, scale: 4
      t.decimal :line_amount, precision: 16, scale: 4
      t.string :status

      t.timestamps
    end
  end
end
