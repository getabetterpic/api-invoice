class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :invoice_date
      t.string :description
      t.references :customer, index: true
      t.string :status
      t.integer :revision
      t.string :terms

      t.timestamps
    end
  end
end
