class AddInvoiceToInvoiceLine < ActiveRecord::Migration
  def change
    add_reference :invoice_lines, :invoice, index: true
  end
end
